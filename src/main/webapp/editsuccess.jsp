<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Record Updated</title>
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
            color: #4CAF50;
            margin-top: 10px;
        }
        p {
            color: #555;
            margin-bottom: 30px;
        }
        .success-icon {
            font-size: 48px;
            color: #4CAF50;
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
    <span class="success-icon">&#10004;</span>
    <h1>Record Updated</h1>
    <p>Your record has been updated successfully.</p>
    <p class="highlighted">Please go back to Home and Click search to check your details...!</p>
    <h1>
        <a href="index.html"><button>Home</button></a>
    </h1>
</body>
</html>
