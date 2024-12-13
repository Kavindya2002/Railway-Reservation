<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="styles/railwayUserProfile.css">
</head>
<body>

<%
    String id = request.getParameter("id");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phone = request.getParameter("phone");
    String userName = request.getParameter("username");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String password = request.getParameter("password");
%>

<div class="profile-container">
    <div class="left-panel">
        <div class="profile-picture">
            <!-- Profile picture placeholder -->
            <img src="images/train-profile.png" alt="Profile Picture">
        </div>
        <div class="user-info">
            <h3>Welcome, <span><%=userName%></span></h3>
            <button class="action-btn" onclick="location.href='login.jsp';">Log Out</button>
            <button class="action-btn" onclick="location.href='homepage.jsp';">Back</button>
        </div>
    </div>

    <div class="right-panel">
        <div class="details">
            <h2>User Details</h2>
            <p><strong>First Name:</strong> <%=fname%></p>
            <p><strong>Last Name:</strong> <%=lname%></p>
            <p><strong>Email:</strong> <%=email%></p>
            <p><strong>Address:</strong> <%=address%></p>
            <p><strong>Mobile Number:</strong> <%=phone%></p>
        </div>

        <div class="update-section">
            <h2>Update My Details</h2>
            <form action="updateDetails" method="post">
                <input type="hidden" name="id" value="<%=id%>">
                <label>Update Username:</label>
                <input type="text" name="newUsername" value="<%=userName%>"><br>

                <label>Update Email:</label>
                <input type="email" name="newEmail" value="<%=email%>"><br>

                <label>Update Address:</label>
                <input type="text" name="newAddress" value="<%=address%>"><br>

                <label>Update Mobile Number:</label>
                <input type="text" name="newMobileNumber" value="<%=phone%>"><br>

                <button type="submit" class="action-btn">Update</button>
            </form>
        </div>

        <div class="delete-section">
            <h2>Delete Account</h2>
            <form action="deleteAccount" method="post">
                <button type="submit" class="action-btn delete">Delete</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>