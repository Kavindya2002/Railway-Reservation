package com.costomer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteAccount")
public class DeleteAccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get username from session
        String username = (String) request.getSession().getAttribute("username");
        
        // Delete user account from database
        boolean success = deleteUserAccount(username);
        
        // Redirect to appropriate page
        if (success) {
            // If deletion is successful, redirect to confirmation page
            response.sendRedirect("login.jsp");
        } 
    }
    
    // Method to delete user account from the database
    private boolean deleteUserAccount(String username) {
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            // Establish database connection (Replace with your database connection code)
            conn = dataBase.getConnection();
            
            // Delete user account
            stmt = conn.prepareStatement("DELETE FROM user WHERE username = ?");
            stmt.setString(1, username);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
