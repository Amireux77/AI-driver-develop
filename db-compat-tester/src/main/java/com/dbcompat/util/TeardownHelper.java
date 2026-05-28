package com.dbcompat.util;

import com.dbcompat.model.TestCase;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 从 SQL 中提取 CREATE TABLE 对象，并确保 teardown 含对应 DROP TABLE。
 */
public final class TeardownHelper {

    private static final Pattern CREATE_TABLE = Pattern.compile(
            "CREATE\\s+TABLE\\s+(?:([\\w$]+)\\.)?([\\w$]+)",
            Pattern.CASE_INSENSITIVE);

    private TeardownHelper() {}

    /** 加载矩阵后调用：为含建表但 teardown 未覆盖的用例自动追加 DROP */
    public static void ensureTeardownForAll(List<TestCase> cases) {
        for (TestCase tc : cases) {
            ensureTeardown(tc);
        }
    }

    public static void ensureTeardown(TestCase tc) {
        LinkedHashSet<String> tables = new LinkedHashSet<>();
        collectTables(tc.getSql(), tables);
        if (tc.getDbSql() != null) {
            collectTables(tc.getDbSql().getMysql(), tables);
            collectTables(tc.getDbSql().getPg(), tables);
            collectTables(tc.getDbSql().getOracle(), tables);
            collectTables(tc.getDbSql().getXugu(), tables);
        }
        if (tables.isEmpty()) {
            return;
        }

        List<String> teardown = tc.getTeardown() != null
                ? new ArrayList<>(tc.getTeardown())
                : new ArrayList<>();

        Set<String> existingDrops = new HashSet<>();
        for (String td : teardown) {
            if (td != null) {
                existingDrops.add(td.trim().toUpperCase(Locale.ROOT));
            }
        }

        for (String table : tables) {
            String drop = "DROP TABLE " + table;
            if (!existingDrops.contains(drop.toUpperCase(Locale.ROOT))) {
                teardown.add(drop);
                existingDrops.add(drop.toUpperCase(Locale.ROOT));
            }
        }
        tc.setTeardown(teardown);
    }

    private static void collectTables(String sql, Set<String> out) {
        if (sql == null || sql.isBlank()) {
            return;
        }
        Matcher m = CREATE_TABLE.matcher(sql);
        while (m.find()) {
            String schema = m.group(1);
            String name = m.group(2);
            if (schema != null && !schema.isEmpty()) {
                out.add(schema + "." + name);
            } else {
                out.add(name);
            }
        }
    }
}
