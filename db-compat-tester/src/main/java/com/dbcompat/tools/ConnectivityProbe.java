package com.dbcompat.tools;

import com.dbcompat.config.AppConfig;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

/** 四库连通性探测 */
public class ConnectivityProbe {

    private static final String XUGU_TABLE = "_TC_CONN_VERIFY";
    private static final DateTimeFormatter TS = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public static void main(String[] args) throws Exception {
        Properties props = AppConfig.loadDbProperties();
        File root = AppConfig.projectRoot();
        String reportDir = args.length > 0 ? args[0] : "reports";
        File outDir = new File(reportDir).isAbsolute() ? new File(reportDir) : new File(root, reportDir);
        String now = LocalDateTime.now().format(TS);
        String fileTs = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmm"));

        List<String> lines = new ArrayList<>();
        lines.add("# 四库连通性测试报告");
        lines.add("");
        lines.add("> 生成时间：" + now);
        lines.add("> MySQL / PostgreSQL / Oracle：仅测试连接");
        lines.add("> XuguDB：连接成功后创建表 `" + XUGU_TABLE + "` 并写入探测行，结束后删除该表");
        lines.add("");
        lines.add("| 数据库 | 地址 | 结果 | 详情 |");
        lines.add("|--------|------|------|------|");

        testPing(props, "mysql", "MySQL", "SELECT 1", null, lines);
        testPing(props, "pg", "PostgreSQL", "SELECT 1", null, lines);
        testPing(props, "oracle", "Oracle", "SELECT 1 FROM DUAL", null, lines);
        testXuguCreateTable(props, lines, now);

        outDir.mkdirs();
        String reportPath = new File(outDir, "CONNECTIVITY_report_" + fileTs + ".md").getPath();
        try (Writer w = new OutputStreamWriter(new FileOutputStream(reportPath), StandardCharsets.UTF_8)) {
            for (String line : lines) w.write(line + "\n");
        }
        System.out.println("\n报告: " + new File(reportPath).getAbsolutePath());
    }

    private static int connectTimeout(Properties props) {
        String v = props.getProperty("connect.timeout", "10");
        try {
            return Integer.parseInt(v.trim());
        } catch (NumberFormatException e) {
            return 10;
        }
    }

    private static void testPing(Properties props, String key, String label,
                                   String probeSql, String extra, List<String> lines) {
        String url = props.getProperty(key + ".url");
        String user = props.getProperty(key + ".user");
        String driver = props.getProperty(key + ".driver");
        String password = props.getProperty(key + ".password");
        String host = extractHost(url);
        String configErr = validateDbConfig(key, url, user, driver);
        if (configErr != null) {
            lines.add("| " + label + " | " + host + " | ❌ 失败 | " + configErr + " |");
            System.out.println("[FAIL] " + label + " — " + configErr);
            return;
        }
        try {
            Class.forName(driver);
            try (Connection conn = openConnection(props, url, user, password);
                 Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery(probeSql)) {
                rs.next();
                String detail = "连接成功，探测 SQL 返回: " + rs.getObject(1);
                if (extra != null) detail += "；" + extra;
                lines.add("| " + label + " | " + host + " | ✅ 成功 | " + detail + " |");
                System.out.println("[OK]   " + label + " — " + detail);
            }
        } catch (Exception e) {
            String msg = shorten(e.getMessage());
            lines.add("| " + label + " | " + host + " | ❌ 失败 | " + msg + " |");
            System.out.println("[FAIL] " + label + " — " + msg);
        }
    }

    private static void testXuguCreateTable(Properties props, List<String> lines, String now) {
        String key = "xugu";
        String url = props.getProperty(key + ".url");
        String user = props.getProperty(key + ".user");
        String driver = props.getProperty(key + ".driver");
        String password = props.getProperty(key + ".password");
        String host = extractHost(url);
        String configErr = validateDbConfig(key, url, user, driver);
        if (configErr != null) {
            lines.add("| XuguDB | " + host + " | ❌ 失败 | " + configErr + " |");
            System.out.println("[FAIL] XuguDB — " + configErr);
            return;
        }
        String createSql = "CREATE TABLE " + XUGU_TABLE
                + " (id INT PRIMARY KEY, probe_note VARCHAR(200), created_at VARCHAR(30))";
        String insertSql = "INSERT INTO " + XUGU_TABLE
                + " VALUES (1, 'connectivity probe', '" + now + "')";
        try {
            Class.forName(driver);
            try (Connection conn = openConnection(props, url, user, password);
                 Statement stmt = conn.createStatement()) {
                dropXuguVerifyTable(stmt);
                stmt.execute(createSql);
                stmt.execute(insertSql);
                dropXuguVerifyTable(stmt);
                String detail = "连接成功；已建表、写入探测行并删除测试表 `" + XUGU_TABLE + "`";
                lines.add("| XuguDB | " + host + " | ✅ 成功 | " + detail + " |");
                System.out.println("[OK]   XuguDB — " + detail);
            }
        } catch (Exception e) {
            String msg = shorten(e.getMessage());
            lines.add("| XuguDB | " + host + " | ❌ 失败 | " + msg + " |");
            System.out.println("[FAIL] XuguDB — " + msg);
            tryCleanupXuguTable(props);
        }
    }

    /** 探测前/后清理；表不存在时忽略错误 */
    private static void dropXuguVerifyTable(Statement stmt) {
        try {
            stmt.execute("DROP TABLE " + XUGU_TABLE);
        } catch (SQLException ignored) {
            // 表可能本不存在
        }
    }

    /** 探测中途失败时仍尝试删表，避免残留 */
    private static void tryCleanupXuguTable(Properties props) {
        String url = props.getProperty("xugu.url");
        String user = props.getProperty("xugu.user");
        String driver = props.getProperty("xugu.driver");
        String password = props.getProperty("xugu.password");
        try {
            Class.forName(driver);
            try (Connection conn = openConnection(props, url, user, password);
                 Statement stmt = conn.createStatement()) {
                dropXuguVerifyTable(stmt);
            }
        } catch (Exception ignored) {
            // 清理失败不掩盖原始错误
        }
    }

    private static Connection openConnection(Properties props, String url, String user, String password)
            throws SQLException {
        int timeout = connectTimeout(props);
        DriverManager.setLoginTimeout(timeout);
        Properties cp = new Properties();
        cp.setProperty("user", user != null ? user : "");
        cp.setProperty("password", password != null ? password : "");
        cp.setProperty("loginTimeout", String.valueOf(timeout));
        return DriverManager.getConnection(url, cp);
    }

    private static String validateDbConfig(String key, String url, String user, String driver) {
        if (url == null || url.isBlank()) {
            return "未配置 " + key + ".url";
        }
        if (driver == null || driver.isBlank()) {
            return "未配置 " + key + ".driver";
        }
        if (user == null || user.isBlank()) {
            return "未配置 " + key + ".user";
        }
        return null;
    }

    private static String shorten(String msg) {
        if (msg == null) return "unknown";
        msg = msg.replace("|", "/").replace("\n", " ");
        return msg.length() > 120 ? msg.substring(0, 120) + "…" : msg;
    }

    private static String extractHost(String url) {
        if (url == null) return "-";
        int idx = url.indexOf("://");
        if (idx < 0) return url;
        String rest = url.substring(idx + 3);
        int slash = rest.indexOf('/');
        int at = rest.lastIndexOf('@');
        String hostPart = at >= 0 ? rest.substring(at + 1) : rest;
        if (slash >= 0) hostPart = hostPart.substring(0, slash);
        return hostPart;
    }
}
