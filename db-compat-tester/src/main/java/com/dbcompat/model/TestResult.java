package com.dbcompat.model;

/**
 * 单条测试用例在单个数据库上的执行结果
 */
public class TestResult {

    public enum Status {
        /** 执行成功，有正常返回值 */
        OK,
        /** 执行成功但无返回值（DDL/DML） */
        OK_NO_RESULT,
        /** 数据库报错 */
        ERROR,
        /** 连接失败，未能执行 */
        SKIPPED,
        /** 用例标记 expectError=true 时的预期报错 */
        EXPECTED_ERROR
    }

    private String caseId;
    private String dbKey;       // mysql / pg / oracle / xugu
    private Status status;
    private String result;      // 结果字符串（SELECT 的第一行第一列，或"OK"）
    private String errorCode;   // 数据库错误码
    private String errorMsg;    // 完整错误信息
    private long durationMs;    // 执行耗时

    public TestResult(String caseId, String dbKey) {
        this.caseId = caseId;
        this.dbKey = dbKey;
    }

    // ---- 快速构造方法 ----

    public static TestResult ok(String caseId, String dbKey, String result, long ms) {
        TestResult r = new TestResult(caseId, dbKey);
        r.status = result == null ? Status.OK_NO_RESULT : Status.OK;
        r.result = result;
        r.durationMs = ms;
        return r;
    }

    public static TestResult error(String caseId, String dbKey, String code, String msg, long ms) {
        TestResult r = new TestResult(caseId, dbKey);
        r.status = Status.ERROR;
        r.errorCode = code;
        r.errorMsg = msg;
        r.durationMs = ms;
        return r;
    }

    public static TestResult skipped(String caseId, String dbKey, String reason) {
        TestResult r = new TestResult(caseId, dbKey);
        r.status = Status.SKIPPED;
        r.errorMsg = reason;
        return r;
    }

    public static TestResult expectedError(String caseId, String dbKey, String code, String msg, long ms) {
        TestResult r = new TestResult(caseId, dbKey);
        r.status = Status.EXPECTED_ERROR;
        r.errorCode = code;
        r.errorMsg = msg;
        r.durationMs = ms;
        return r;
    }

    /** 报告用：返回简短的单元格文本 */
    public String toCell() {
        switch (status) {
            case OK:
                return result != null ? result : "✅ OK";
            case OK_NO_RESULT:
                return "✅ OK";
            case ERROR:
                String code = errorCode != null ? "[" + errorCode + "] " : "";
                // 去掉换行符，截断到60字符，避免破坏Markdown表格
                String msg = errorMsg != null
                        ? errorMsg.replace('\n', ' ').replace('\r', ' ').replace('|', '/')
                        : "";
                if (msg.length() > 60) msg = msg.substring(0, 60) + "…";
                return "❌ " + code + msg;
            case SKIPPED:
                return "⏭ SKIP: " + errorMsg;
            case EXPECTED_ERROR:
                String ec = errorCode != null ? "[" + errorCode + "] " : "";
                String em = errorMsg != null
                        ? errorMsg.replace('\n', ' ').replace('\r', ' ').replace('|', '/')
                        : "";
                if (em.length() > 50) em = em.substring(0, 50) + "…";
                return "✅ 预期错误 " + ec + em;
            default:
                return "?";
        }
    }

    // ---- getters ----

    public String getCaseId()    { return caseId; }
    public String getDbKey()     { return dbKey; }
    public Status getStatus()    { return status; }
    public String getResult()    { return result; }
    public String getErrorCode() { return errorCode; }
    public String getErrorMsg()  { return errorMsg; }
    public long getDurationMs()  { return durationMs; }
}
