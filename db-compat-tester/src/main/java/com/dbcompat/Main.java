package com.dbcompat;

import com.dbcompat.config.AppConfig;
import com.dbcompat.loader.MatrixLoader;
import com.dbcompat.model.TestCase;
import com.dbcompat.model.TestResult;
import com.dbcompat.report.ReportGenerator;
import com.dbcompat.runner.DatabaseRunner;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * 主入口
 * 用法：java -jar db-compat-tester.jar <matrix-file> [output-dir]
 * 示例：java -jar db-compat-tester.jar datetime_type.json ./reports
 */
public class Main {

    private static final List<String> DB_KEYS = List.of("mysql", "pg", "oracle", "xugu");

    public static void main(String[] args) throws Exception {
        // ---- 解析参数 ----
        String matrixFile = args.length > 0 ? args[0] : "insert_verification.json";
        String outputDir  = args.length > 1 ? args[1] : "reports";
        if (!new File(outputDir).isAbsolute()) {
            outputDir = new File(AppConfig.projectRoot(), outputDir).getPath();
        }

        System.out.println("=== DB Compatibility Tester ===");
        System.out.println("矩阵文件: " + matrixFile);
        System.out.println("输出目录: " + outputDir);

        // ---- 加载测试矩阵 ----
        System.out.println("\n[1/3] 加载测试矩阵...");
        List<TestCase> cases = MatrixLoader.load(matrixFile);
        System.out.println("      共 " + cases.size() + " 条用例");

        // ---- 初始化各库 Runner ----
        System.out.println("[2/3] 初始化数据库连接...");
        Properties props = DatabaseRunner.loadProps();
        boolean continueOnError = Boolean.parseBoolean(props.getProperty("continue.on.error", "true"));

        List<DatabaseRunner> runners = new ArrayList<>();
        for (String dbKey : DB_KEYS) {
            DatabaseRunner runner = new DatabaseRunner(dbKey, props);
            runners.add(runner);
            if (runner.isReady()) {
                System.out.println("      [" + dbKey + "] 配置就绪");
            } else {
                System.out.println("      [" + dbKey + "] 跳过 — " + runner.getSkipReason());
            }
        }

        // ---- 执行测试 ----
        System.out.println("[3/3] 开始执行测试...\n");

        // caseId → (dbKey → TestResult)
        Map<String, Map<String, TestResult>> allResults = new LinkedHashMap<>();

        for (TestCase tc : cases) {
            System.out.printf("  %-50s", "[" + tc.getId() + "]");
            Map<String, TestResult> rowResults = new LinkedHashMap<>();

            for (DatabaseRunner runner : runners) {
                TestResult result;
                try {
                    result = runner.run(tc);
                } catch (Exception e) {
                    result = TestResult.skipped(tc.getId(), runner.getDbKey(), "未知异常: " + e.getMessage());
                    if (!continueOnError) throw e;
                }
                rowResults.put(runner.getDbKey(), result);
                System.out.printf("%-8s", statusIcon(result));
            }
            System.out.println();
            allResults.put(tc.getId(), rowResults);
        }

        // ---- 生成报告 ----
        new File(outputDir).mkdirs();
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmm"));
        // 从矩阵文件名推断类型名，如 datetime_type.json → DATETIME
        String baseName = AppConfig.matrixBaseName(matrixFile);
        String typeName = baseName.replace(".json", "").replace("_type", "").toUpperCase().replace("_", " ");
        String reportPath = outputDir + File.separator + typeName + "_report_" + timestamp + ".md";

        ReportGenerator.generate(typeName, cases, allResults, reportPath);

        // ---- 控制台摘要 ----
        System.out.println("\n====== 执行摘要 ======");
        for (String dbKey : DB_KEYS) {
            long ok    = allResults.values().stream().map(m -> m.get(dbKey))
                    .filter(r -> r != null && isSuccess(r)).count();
            long error = allResults.values().stream().map(m -> m.get(dbKey))
                    .filter(r -> r != null && r.getStatus() == TestResult.Status.ERROR).count();
            System.out.printf("  %-10s ✅ %2d  ❌ %2d%n", dbKey, ok, error);
        }
        System.out.println("\n报告路径: " + new File(reportPath).getAbsolutePath());
    }

    private static boolean isSuccess(TestResult r) {
        TestResult.Status s = r.getStatus();
        return s == TestResult.Status.OK
                || s == TestResult.Status.OK_NO_RESULT
                || s == TestResult.Status.EXPECTED_ERROR;
    }

    private static String statusIcon(TestResult r) {
        if (r == null) return "?";
        switch (r.getStatus()) {
            case OK: case OK_NO_RESULT: case EXPECTED_ERROR: return "✅";
            case ERROR:   return "❌";
            case SKIPPED: return "⏭";
            default:      return "?";
        }
    }
}
