<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Record Not Updated</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f5f5f5;
        }
        h1 {
            color: #FF5733;
            margin-top: 10px;
        }
        p {
            color: #555;
            margin-bottom: 30px;
        }
        .error-icon {
            font-size: 48px;
            color: #FF5733;
        }
        .highlighted {
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
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
    <span class="error-icon">&#9888;</span>
    <h1>Record Not Updated</h1>
    <p>Your record has not been updated successfully. The password you provided is incorrect.</p>
    <p class="highlighted">Provide the correct password after editing your credentials. Please go back and check again.!</p>
    <h1>
        <a href="javascript:history.back()"><button>Go Back</button></a>
    </h1>
</body>
</html>
