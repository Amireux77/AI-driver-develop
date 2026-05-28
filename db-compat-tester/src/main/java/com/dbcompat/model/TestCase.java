package com.dbcompat.model;

import java.util.List;

/**
 * 单条测试用例
 * 一个 TestCase 对应测试矩阵 JSON 中的一个条目
 */
public class TestCase {

    /** 用例唯一标识，如 tc_datetime_declare_basic */
    private String id;

    /** 所属维度分类，如 "类型声明", "精度参数", "边界值", "运算符" */
    private String category;

    /** 用例描述（中文），直接输出到报告 */
    private String description;

    /**
     * 每个数据库对应的SQL列表（允许多条，框架会顺序执行，取最后一条的结果）
     * key: mysql / pg / oracle / xugu
     * 若某库使用相同SQL，可在 sql 字段中写通用SQL，db_sql 中只覆盖差异库
     */
    private String sql;

    /** 各库差异化SQL（覆盖通用sql）*/
    private DbSql dbSql;

    /**
     * 期望行为描述（不做自动断言，仅作为报告注释）
     * 例如："应返回 DATETIME 类型值" / "应抛出类型错误"
     */
    private String expected;

    /** 是否是"预期报错"场景（true时，有error反而是正确的） */
    private boolean expectError;

    /** 清理SQL（测试后执行，如 DROP TABLE），每库通用 */
    private List<String> teardown;

    // ---- getters / setters ----

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getSql() { return sql; }
    public void setSql(String sql) { this.sql = sql; }

    public DbSql getDbSql() { return dbSql; }
    public void setDbSql(DbSql dbSql) { this.dbSql = dbSql; }

    public String getExpected() { return expected; }
    public void setExpected(String expected) { this.expected = expected; }

    public boolean isExpectError() { return expectError; }
    public void setExpectError(boolean expectError) { this.expectError = expectError; }

    public List<String> getTeardown() { return teardown; }
    public void setTeardown(List<String> teardown) { this.teardown = teardown; }

    /** 获取指定库的SQL，若无差异化配置则使用通用sql */
    public String getSqlFor(String dbKey) {
        if (dbSql != null) {
            String specific = dbSql.get(dbKey);
            if (specific != null && !specific.isBlank()) return specific;
        }
        return sql;
    }

    // ---- 内部类：各库差异化SQL ----
    public static class DbSql {
        private String mysql;
        private String pg;
        private String oracle;
        private String xugu;

        public String get(String key) {
            switch (key) {
                case "mysql":  return mysql;
                case "pg":     return pg;
                case "oracle": return oracle;
                case "xugu":   return xugu;
                default:       return null;
            }
        }

        public String getMysql()  { return mysql; }
        public void setMysql(String mysql) { this.mysql = mysql; }
        public String getPg()     { return pg; }
        public void setPg(String pg) { this.pg = pg; }
        public String getOracle() { return oracle; }
        public void setOracle(String oracle) { this.oracle = oracle; }
        public String getXugu()   { return xugu; }
        public void setXugu(String xugu) { this.xugu = xugu; }
    }
}
