package com.dbcompat.report;

import com.dbcompat.model.TestCase;
import com.dbcompat.model.TestResult;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * 将测试结果生成 Markdown 报告
 * 输出格式：按 category 分节的对比表，可直接粘贴进可行性分析文档
 */
public class ReportGenerator {

    private static final List<String> DB_KEYS = List.of("mysql", "pg", "oracle", "xugu");
    private static final Map<String, String> DB_LABELS = Map.of(
            "mysql", "MySQL 8.0",
            "pg", "PG 16",
            "oracle", "Oracle 19c",
            "xugu", "XuguDB");

    /**
     * @param typeName   类型名称，如 "DATETIME"，用于报告标题
     * @param cases      测试用例列表（保持顺序）
     * @param allResults caseId → (dbKey → TestResult)
     * @param outputPath 输出文件路径
     */
    public static void generate(String typeName,
            List<TestCase> cases,
            Map<String, Map<String, TestResult>> allResults,
            String outputPath) throws IOException {

        StringBuilder sb = new StringBuilder();
        String now = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));

        // ---- 报告头 ----
        sb.append("# ").append(typeName).append(" 类型跨库行为对比报告\n\n");
        sb.append("> 生成时间：").append(now).append("  \n");
        // 使用 DB_LABELS 动态生成测试数据库列表，避免硬编码并使用上面的常量
        sb.append("> 测试数据库：");
        java.util.StringJoiner sj = new java.util.StringJoiner(" · ");
        for (String k : DB_KEYS)
            sj.add(DB_LABELS.getOrDefault(k, k));
        sb.append(sj.toString());
        sb.append("  \n");
        sb.append("> 结论标注：✅ 正常 · ❌ 报错/异常 · ⚠️ 行为偏差 · ⏭ 未执行\n\n");

        // ---- 汇总统计 ----
        sb.append("## 汇总\n\n");
        sb.append(summaryTable(cases, allResults));
        sb.append("\n");

        // ---- 按 category 分节 ----
        // 保持 category 首次出现的顺序
        LinkedHashMap<String, List<TestCase>> byCat = new LinkedHashMap<>();
        for (TestCase tc : cases) {
            byCat.computeIfAbsent(tc.getCategory(), k -> new ArrayList<>()).add(tc);
        }

        for (Map.Entry<String, List<TestCase>> entry : byCat.entrySet()) {
            sb.append("## ").append(entry.getKey()).append("\n\n");
            sb.append(detailTable(entry.getValue(), allResults));
            sb.append("\n");
        }

        // ---- XuguDB 差异汇总（自动识别） ----
        sb.append("## XuguDB 与主流数据库差异汇总\n\n");
        sb.append(diffSummary(cases, allResults));
        sb.append("\n");

        // 写文件
        try (Writer w = new OutputStreamWriter(new FileOutputStream(outputPath), StandardCharsets.UTF_8)) {
            w.write(sb.toString());
        }
        System.out.println("[INFO] 报告已生成: " + outputPath);
    }

    // ---- 汇总表：每库 OK/ERROR/SKIP 数量 ----
    private static String summaryTable(List<TestCase> cases,
            Map<String, Map<String, TestResult>> allResults) {
        StringBuilder sb = new StringBuilder();
        // 动态生成表头和统计数组，避免与 DB_KEYS/DB_LABELS 不一致
        sb.append("| 指标 |");
        for (String k : DB_KEYS)
            sb.append(" ").append(DB_LABELS.getOrDefault(k, k)).append(" |");
        sb.append("\n|");
        // 分隔线，第一列为指标
        sb.append("------|");
        for (int i = 0; i < DB_KEYS.size(); i++)
            sb.append("-----------|");
        sb.append("\n");

        int n = DB_KEYS.size();
        int[] ok = new int[n];
        int[] error = new int[n];
        int[] skip = new int[n];

        for (TestCase tc : cases) {
            Map<String, TestResult> row = allResults.getOrDefault(tc.getId(), Map.of());
            for (int i = 0; i < DB_KEYS.size(); i++) {
                TestResult r = row.get(DB_KEYS.get(i));
                if (r == null || r.getStatus() == TestResult.Status.SKIPPED)
                    skip[i]++;
                else if (r.getStatus() == TestResult.Status.ERROR)
                    error[i]++;
                else if (isSuccess(r))
                    ok[i]++;
                else
                    skip[i]++;
            }
        }

        sb.append("| 总用例数 |");
        for (int i = 0; i < n; i++)
            sb.append(" ").append(cases.size()).append(" |");
        sb.append("\n| ✅ 成功 |");
        for (int v : ok)
            sb.append(" ").append(v).append(" |");
        sb.append("\n| ❌ 报错 |");
        for (int v : error)
            sb.append(" ").append(v).append(" |");
        sb.append("\n| ⏭ 跳过 |");
        for (int v : skip)
            sb.append(" ").append(v).append(" |");
        sb.append("\n");
        return sb.toString();
    }

    // ---- 详细对比表 ----
    private static String detailTable(List<TestCase> cases,
            Map<String, Map<String, TestResult>> allResults) {
        StringBuilder sb = new StringBuilder();
        // 详细表头使用 DB_LABELS 动态生成，避免硬编码
        sb.append("| 用例 | 描述 |");
        for (String k : DB_KEYS)
            sb.append(" ").append(DB_LABELS.getOrDefault(k, k)).append(" |");
        sb.append(" 期望行为 |\n");
        sb.append("|------|------|");
        for (int i = 0; i < DB_KEYS.size(); i++)
            sb.append("-----------|");
        sb.append("----------|\n");

        for (TestCase tc : cases) {
            Map<String, TestResult> row = allResults.getOrDefault(tc.getId(), Map.of());
            sb.append("| `").append(tc.getId()).append("` | ")
                    .append(tc.getDescription()).append(" |");
            for (String dbKey : DB_KEYS) {
                TestResult r = row.get(dbKey);
                sb.append(" ").append(r != null ? r.toCell() : "⏭ 未执行").append(" |");
            }
            sb.append(" ").append(tc.getExpected() != null ? tc.getExpected() : "").append(" |\n");
        }
        return sb.toString();
    }

    // ---- XuguDB 差异自动识别 ----
    // 规则：同一用例中，若 mysql/pg/oracle 3库结果类型一致（同为OK或同为ERROR），
    // 但 xugu 与之不同，则标记为差异项
    private static String diffSummary(List<TestCase> cases,
            Map<String, Map<String, TestResult>> allResults) {
        StringBuilder sb = new StringBuilder();
        sb.append("| 用例 | 描述 | 主流库行为 | XuguDB实际 | 差异类型 |\n");
        sb.append("|------|------|-----------|------------|----------|\n");

        int diffCount = 0;
        for (TestCase tc : cases) {
            Map<String, TestResult> row = allResults.getOrDefault(tc.getId(), Map.of());
            TestResult xugu = row.get("xugu");
            if (xugu == null || xugu.getStatus() == TestResult.Status.SKIPPED)
                continue;

            // 统计主流库中 OK 的数量
            long mainlineOkCount = DB_KEYS.stream()
                    .filter(k -> !k.equals("xugu"))
                    .map(row::get)
                    .filter(ReportGenerator::isSuccess)
                    .count();

            boolean xuguOk = isSuccess(xugu);

            // 主流库2+成功，但 xugu 报错 → 缺失功能
            if (mainlineOkCount >= 2 && !xuguOk) {
                sb.append("| `").append(tc.getId()).append("` | ")
                        .append(tc.getDescription()).append(" | ✅ 主流库支持 | ")
                        .append(xugu.toCell()).append(" | **缺失功能** |\n");
                diffCount++;
            }
            // 主流库2+报错，但 xugu 成功 → 扩展行为（需关注语义是否正确）
            else if (mainlineOkCount <= 1 && xuguOk) {
                sb.append("| `").append(tc.getId()).append("` | ")
                        .append(tc.getDescription()).append(" | ❌ 主流库不支持 | ")
                        .append(xugu.toCell()).append(" | ⚠️ 扩展行为，需核实语义 |\n");
                diffCount++;
            }
        }

        if (diffCount == 0) {
            sb.append("| — | 未发现显著差异项 | — | — | — |\n");
        }
        return sb.toString();
    }

    private static boolean isSuccess(TestResult r) {
        if (r == null)
            return false;
        TestResult.Status s = r.getStatus();
        return s == TestResult.Status.OK
                || s == TestResult.Status.OK_NO_RESULT
                || s == TestResult.Status.EXPECTED_ERROR;
    }
}
