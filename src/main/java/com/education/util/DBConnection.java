package com.education.util;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        try {
        	String url = "jdbc:mysql://localhost:3306/onlineeducation";
            String username = ConnectionData.USERNAME;
            String password = ConnectionData.PASSWORD;

            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println("Database connection failed: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
}