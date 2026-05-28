package com.dbcompat.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 按分号拆分 SQL，忽略单引号字符串内的分号（矩阵用例足够）。
 */
public final class SqlSplitter {

    private SqlSplitter() {}

    public static List<String> split(String sql) {
        List<String> parts = new ArrayList<>();
        if (sql == null || sql.isBlank()) {
            return parts;
        }
        StringBuilder cur = new StringBuilder();
        boolean inSingle = false;
        for (int i = 0; i < sql.length(); i++) {
            char c = sql.charAt(i);
            if (c == '\'') {
                if (inSingle && i + 1 < sql.length() && sql.charAt(i + 1) == '\'') {
                    cur.append("''");
                    i++;
                    continue;
                }
                inSingle = !inSingle;
                cur.append(c);
            } else if (c == ';' && !inSingle) {
                String s = cur.toString().trim();
                if (!s.isEmpty()) {
                    parts.add(s);
                }
                cur.setLength(0);
            } else {
                cur.append(c);
            }
        }
        String tail = cur.toString().trim();
        if (!tail.isEmpty()) {
            parts.add(tail);
        }
        return parts;
    }
}
