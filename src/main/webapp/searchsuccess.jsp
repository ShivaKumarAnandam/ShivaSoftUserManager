<%@page import="com.registrationservlet.UserData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 20px;
            background-color: #ffffff;
        }
        table {
            margin: auto;
            text-align: center;
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .success-message {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            margin: 20px auto;
            width: 50%;
            border-radius: 5px;
        }
        a {
            text-decoration: none;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Your Details...</h1>
    <p class="success-message">Data retrieved successfully. Following data has been fetched based on the email and password provided:</p>
    
    <%
	UserData user= (UserData)request.getAttribute("user");
	%>
    
    <table>
        <tr>
            <th>User Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Qualification</th>
            <th>Technologies</th>
            <th>Gender</th>
            <th>Address</th>
        </tr>
        <tr>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td>${user.qualification}</td>
            <td>${user.technologies}</td>
            <td>${user.gender}</td>
            <td>${user.address}</td>
        </tr>
    </table>
    <h1>
        <a href="index.html"><button>Home</button></a>
    </h1>
</body>
</html>
