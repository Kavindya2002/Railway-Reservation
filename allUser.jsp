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
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>User Details</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile Number</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${userList}" var="user">
                <tr>
                    <td>${user.id}</td> <!-- Corrected: Use lowercase 'id' instead of 'Id()' -->
                    <td>${user.fname}</td> <!-- Corrected: Use lowercase 'fname' instead of 'Fname()' -->
                    <td>${user.lname}</td> <!-- Corrected: Use lowercase 'lname' instead of 'Lname()' -->
                    <td>${user.username}</td> <!-- Corrected: Use lowercase 'username' instead of 'Username()' -->
                    <td>${user.email}</td> <!-- Corrected: Use lowercase 'email' instead of 'Email()' -->
                    <td>${user.address}</td> <!-- Corrected: Use lowercase 'address' instead of 'Address()' -->
                    <td>${user.mnumber}</td> <!-- Corrected: Use lowercase 'mnumber' instead of 'Mnumber()' -->
                    <td>${user.password}</td> <!-- Corrected: Use lowercase 'password' instead of 'Password()' -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
