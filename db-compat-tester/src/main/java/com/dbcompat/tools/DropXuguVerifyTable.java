package com.dbcompat.tools;

import com.dbcompat.config.AppConfig;

import java.sql.*;

/** 删除连通性探测表 */
public class DropXuguVerifyTable {

    public static void main(String[] args) throws Exception {
        var props = AppConfig.loadDbProperties();
        Class.forName(props.getProperty("xugu.driver"));
        try (Connection c = DriverManager.getConnection(
                props.getProperty("xugu.url"), props.getProperty("xugu.user"), props.getProperty("xugu.password"));
             Statement s = c.createStatement()) {
            s.execute("DROP TABLE _TC_CONN_VERIFY");
            System.out.println("[OK] Dropped _TC_CONN_VERIFY");
        } catch (SQLException e) {
            System.out.println("[INFO] " + e.getMessage());
        }
    }
}
