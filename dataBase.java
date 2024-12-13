package com.costomer;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dataBase {
    // Database connection details
    public static final String url = "jdbc:mysql://localhost:3306/user";
    public static final String username = "root";
    public static final String password = "";

    // Method to establish database connection
    public static Connection getConnection() {
        Connection conn = null;
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Create the database connection
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error establishing connection to the database.");
            e.printStackTrace();
        }
        return conn;
    }
}