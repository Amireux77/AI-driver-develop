package com.dbcompat.loader;

import com.dbcompat.config.AppConfig;
import com.dbcompat.model.TestCase;
import com.dbcompat.util.TeardownHelper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;

import java.io.*;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * 加载测试矩阵 JSON：优先项目根 matrix/，兼容 classpath
 */
public class MatrixLoader {

    private static final Gson GSON = new GsonBuilder().setLenient().create();

    public static List<TestCase> load(String filename) {
        File file = AppConfig.resolveMatrixFile(filename);
        try (JsonReader reader = new JsonReader(new InputStreamReader(
                new FileInputStream(file), StandardCharsets.UTF_8))) {
            reader.setLenient(true);
            Type listType = new TypeToken<List<TestCase>>() {}.getType();
            List<TestCase> cases = GSON.fromJson(reader, listType);
            if (cases == null || cases.isEmpty()) {
                throw new IllegalArgumentException("矩阵为空或不是 JSON 数组: " + file.getAbsolutePath());
            }
            TeardownHelper.ensureTeardownForAll(cases);
            return cases;
        } catch (Exception e) {
            throw new RuntimeException("解析测试矩阵失败: " + file.getAbsolutePath(), e);
        }
    }
}
