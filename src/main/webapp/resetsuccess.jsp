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
        .success-message {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            margin: 20px auto;
            width: 50%;
            border-radius: 5px;
        }
        .success-icon {
            font-size: 48px;
            color: #4CAF50;
            margin-bottom: 10px;
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

    <div class="success-icon">&#10004;</div>
    <h1>Your Password has Reset...!</h1>
     <%
	String user= (String)request.getAttribute("user");
	%>
	
    <p class="success-message">Your Password has been updated successfully with given Email Id : ${user} </p>
   
    <h1>
        <a href="index.html"><button>Home</button></a>
    </h1>
</body>
</html>
