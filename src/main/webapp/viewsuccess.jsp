<%@page import="java.util.List"%>
<%@page import="com.registrationservlet.UserData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<div class="container">

	<h1>List of Users</h1>
    <p class="success-message">Data retrieved successfully. Following are our users data registered with us , Join us below :</p>
    <a href="registration.html"><button>Register Now</button></a>
    <table border="1">
			<tr>
				<th>User Name</th>
				<th>Country</th>
				<th>Qualification</th>
				<th>Technologies</th>
				<th>Comments</th>
				<th>Action</th>
			</tr>


			<%
			List<UserData> users= (List<UserData>)request.getAttribute("users");
			%>

		
			<c:forEach items="${users}" var="user">
				
			<tr>

					<td>${user.username}</td>
					<td>${user.country}</td>
					<td>${user.qualification}</td>
					<td>${user.technologies}</td>
					<td>${user.comments}</td>
					<td>
					<a
						href="delete.jsp?email=${user.email}"><button>Delete</button>
					</a>
					<a
						href="EditServlet?name=${user.username}&password=${user.password}&email=${user.email}&country=${user.country}&qualification=${user.qualification}&technologies=${user.technologies}&gender=${user.gender}&address=${user.address}&comments=${user.comments}"><button>Edit</button>
					</a></td>
				</tr>
			</c:forEach>
			
			
		</table>
    <h1>
        <a href="index.html"><button>Home</button></a>
    </h1>
    		</div>
    
</body>
</html>  
