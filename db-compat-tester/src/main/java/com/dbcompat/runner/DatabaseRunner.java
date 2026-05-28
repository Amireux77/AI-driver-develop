package com.dbcompat.runner;

import com.dbcompat.config.AppConfig;
import com.dbcompat.model.TestCase;
import com.dbcompat.model.TestResult;
import com.dbcompat.util.SqlSplitter;

import java.io.IOException;
import java.sql.*;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

/**
 * 针对单个数据库的SQL执行器
 * 每个数据库实例化一个 DatabaseRunner，线程不安全（每次 run 时新建连接）
 */
public class DatabaseRunner {

    private final String dbKey;   // mysql / pg / oracle / xugu
    private final String url;
    private final String user;
    private final String password;
    private final String driver;
    private final int connectTimeout;
    private final int queryTimeout;
    private final boolean ready;
    private final String skipReason;

    public DatabaseRunner(String dbKey, Properties props) {
        this.dbKey = dbKey;
        this.url = trim(props.getProperty(dbKey + ".url"));
        this.user = trim(props.getProperty(dbKey + ".user"));
        this.password = props.getProperty(dbKey + ".password", "");
        this.driver = trim(props.getProperty(dbKey + ".driver"));
        this.connectTimeout = parseInt(props.getProperty("connect.timeout"), 10);
        this.queryTimeout = parseInt(props.getProperty("query.timeout"), 30);

        boolean rdy;
        String skip;
        String reason = validateConfig();
        if (reason != null) {
            rdy = false;
            skip = reason;
        } else {
            try {
                Class.forName(driver);
                rdy = true;
                skip = null;
            } catch (ClassNotFoundException e) {
                rdy = false;
                skip = "JDBC 驱动未找到: " + driver
                        + "（请检查 lib/jdbc 或 mvn package）";
            }
        }
        this.ready = rdy;
        this.skipReason = skip;
    }

    public static Properties loadProps() {
        try {
            return AppConfig.loadDbProperties();
        } catch (IOException e) {
            throw new RuntimeException("读取 db.properties 失败", e);
        }
    }

    public boolean isReady() {
        return ready;
    }

    public String getSkipReason() {
        return skipReason;
    }

    /**
     * 执行一条测试用例
     */
    public TestResult run(TestCase tc) {
        if (!ready) {
            return TestResult.skipped(tc.getId(), dbKey, skipReason);
        }

        String sql = tc.getSqlFor(dbKey);
        if (sql == null || sql.isBlank()) {
            return TestResult.skipped(tc.getId(), dbKey, "该库无对应SQL");
        }

        long start = System.currentTimeMillis();
        try (Connection conn = openConnection()) {
            runTeardown(conn, tc);
            try {
                String result = executeSql(conn, sql);
                long ms = System.currentTimeMillis() - start;
                return applyExpectation(tc, TestResult.ok(tc.getId(), dbKey, result, ms));
            } catch (SQLException e) {
                long ms = System.currentTimeMillis() - start;
                return applyExpectation(tc, TestResult.error(tc.getId(), dbKey, errorCode(e), e.getMessage(), ms));
            } finally {
                runTeardown(conn, tc);
            }
        } catch (SQLException e) {
            runTeardownBestEffort(tc);
            long ms = System.currentTimeMillis() - start;
            return applyExpectation(tc, TestResult.error(tc.getId(), dbKey, errorCode(e), e.getMessage(), ms));
        }
    }

    private TestResult applyExpectation(TestCase tc, TestResult result) {
        if (tc.isExpectError() && result.getStatus() == TestResult.Status.ERROR) {
            return TestResult.expectedError(tc.getId(), dbKey, result.getErrorCode(),
                    result.getErrorMsg(), result.getDurationMs());
        }
        return result;
    }

    private Connection openConnection() throws SQLException {
        DriverManager.setLoginTimeout(connectTimeout);
        Properties cp = new Properties();
        cp.setProperty("user", user != null ? user : "");
        cp.setProperty("password", password);
        cp.setProperty("loginTimeout", String.valueOf(connectTimeout));
        return DriverManager.getConnection(url, cp);
    }

    private void runTeardownBestEffort(TestCase tc) {
        if (tc.getTeardown() == null || tc.getTeardown().isEmpty()) {
            return;
        }
        try (Connection conn = openConnection()) {
            runTeardown(conn, tc);
        } catch (SQLException ignored) {
            // 连接失败时无法清理
        }
    }

    private String executeSql(Connection conn, String sql) throws SQLException {
        List<String> stmts = SqlSplitter.split(sql);
        String lastResult = null;
        for (String s : stmts) {
            lastResult = executeSingle(conn, s);
        }
        return lastResult;
    }

    private String executeSingle(Connection conn, String sql) throws SQLException {
        String upper = sql.trim().toUpperCase(Locale.ROOT);
        try (Statement stmt = conn.createStatement()) {
            stmt.setQueryTimeout(queryTimeout);
            if (upper.startsWith("SELECT") || upper.startsWith("SHOW")
                    || upper.startsWith("EXPLAIN") || upper.startsWith("WITH")) {
                try (ResultSet rs = stmt.executeQuery(sql)) {
                    if (rs.next()) {
                        StringBuilder sb = new StringBuilder();
                        int cols = rs.getMetaData().getColumnCount();
                        for (int i = 1; i <= cols; i++) {
                            if (i > 1) sb.append(" | ");
                            sb.append(rs.getString(i));
                        }
                        return sb.toString();
                    }
                    return "(empty)";
                }
            } else {
                stmt.execute(sql);
                return null;
            }
        }
    }

    private void runTeardown(Connection conn, TestCase tc) {
        if (tc.getTeardown() == null) {
            return;
        }
        for (String tdSql : tc.getTeardown()) {
            if (tdSql == null || tdSql.isBlank()) {
                continue;
            }
            String adapted = adaptTeardownSql(tdSql.trim());
            try (Statement s = conn.createStatement()) {
                s.setQueryTimeout(queryTimeout);
                s.execute(adapted);
            } catch (SQLException ignored) {
                // 清理失败不影响用例结果
            }
        }
    }

    /** MySQL / PG / Xugu 使用 IF EXISTS，避免残留清理时报语法干扰 */
    private String adaptTeardownSql(String sql) {
        String upper = sql.toUpperCase(Locale.ROOT);
        if (!upper.startsWith("DROP TABLE") || upper.contains("IF EXISTS")) {
            return sql;
        }
        if ("mysql".equals(dbKey) || "pg".equals(dbKey) || "xugu".equals(dbKey)) {
            return sql.replaceFirst("(?i)DROP\\s+TABLE\\s+", "DROP TABLE IF EXISTS ");
        }
        return sql;
    }

    private static String errorCode(SQLException e) {
        String code = String.valueOf(e.getErrorCode());
        if (e.getSQLState() != null) {
            code = e.getSQLState() + "/" + e.getErrorCode();
        }
        return code;
    }

    private String validateConfig() {
        if (url == null || url.isEmpty()) {
            return "未配置 " + dbKey + ".url";
        }
        if (driver == null || driver.isEmpty()) {
            return "未配置 " + dbKey + ".driver";
        }
        if (user == null || user.isEmpty()) {
            return "未配置 " + dbKey + ".user";
        }
        return null;
    }

    private static int parseInt(String v, int defaultValue) {
        if (v == null || v.isBlank()) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(v.trim());
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    private static String trim(String s) {
        return s == null ? null : s.trim();
    }

    public String getDbKey() {
        return dbKey;
    }
}
