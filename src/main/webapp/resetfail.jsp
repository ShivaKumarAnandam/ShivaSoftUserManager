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
        .error-message {
            background-color: #FF5733;
            color: white;
            padding: 10px;
            margin: 20px auto;
            width: 50%;
            border-radius: 5px;
        }
        .error-icon {
            font-size: 48px;
            color: #FF5733;
            margin-bottom: 10px;
        }
        a {
            text-decoration: none;
        }
        .button-container {
            margin-top: 20px;
        }
        button {
            background-color: #FF5733;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #FF6347;
        }
    </style>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</head>
<body>

    <div class="error-icon">&#9888;</div>
    <h1>Your Password hasn't Reset...!</h1>
     <%
	String user= (String)request.getAttribute("user");
	%>
	
    <p class="error-message">Oops! Your Password has not been updated with given Email Id : ${user}  Please go back and provide correct credentials.</p>
   
    <div class="button-container">
        <button onclick="goBack()">Go Back</button>
    </div>
</body>
</html>
