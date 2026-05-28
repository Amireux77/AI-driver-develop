package com.dbcompat.config;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.Properties;

/**
 * 项目根目录下的 config/、matrix/ 与 classpath 资源的统一解析
 */
public final class AppConfig {

    private AppConfig() {}

    public static File projectRoot() {
        File cwd = new File(System.getProperty("user.dir")).getAbsoluteFile();
        if (hasConfigDir(cwd)) return cwd;
        File parent = cwd.getParentFile();
        if (parent != null && hasConfigDir(parent)) return parent;
        return cwd;
    }

    private static boolean hasConfigDir(File root) {
        return new File(root, "config").isDirectory();
    }

    public static Properties loadDbProperties() throws IOException {
        Properties props = new Properties();
        File root = projectRoot();

        File[] candidates = {
                new File(root, "config/db.properties"),
                new File(root, "db-compat-tester/src/main/resources/db.properties"),
                new File(root, "db-compat-tester/target/classes/db.properties")
        };
        for (File f : candidates) {
            if (f.isFile()) {
                try (Reader reader = new InputStreamReader(new FileInputStream(f), StandardCharsets.UTF_8)) {
                    props.load(reader);
                    return props;
                }
            }
        }
        try (InputStream is = AppConfig.class.getResourceAsStream("/db.properties")) {
            if (is != null) {
                try (Reader reader = new InputStreamReader(is, StandardCharsets.UTF_8)) {
                    props.load(reader);
                    return props;
                }
            }
        }
        throw new FileNotFoundException(
                "找不到 db.properties，请在项目根 config/ 下创建（可复制 config/db.properties.example）");
    }

    /**
     * 解析矩阵文件：支持绝对/相对路径、matrix/ 下文件名、classpath /matrix/
     */
    public static File resolveMatrixFile(String spec) {
        if (spec == null || spec.isBlank()) {
            spec = "insert_verification.json";
        }
        File direct = new File(spec);
        if (direct.isFile()) return direct.getAbsoluteFile();

        File root = projectRoot();
        String name = new File(spec).getName();
        File inMatrix = new File(root, "matrix/" + name);
        if (inMatrix.isFile()) return inMatrix.getAbsoluteFile();

        File inTester = new File(root, "db-compat-tester/src/main/resources/matrix/" + name);
        if (inTester.isFile()) return inTester.getAbsoluteFile();

        throw new IllegalArgumentException("找不到测试矩阵: " + spec
                + "（已查找 matrix/ 与 db-compat-tester/src/main/resources/matrix/）");
    }

    public static String matrixBaseName(String spec) {
        return resolveMatrixFile(spec).getName();
    }
}
