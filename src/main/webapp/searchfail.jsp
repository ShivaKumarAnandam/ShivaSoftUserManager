<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Data not Fetched</title>
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
    <h1>Record not Found...</h1>
    <div class="error-message">
        <span class="error-icon">&#9888;</span>
        <p class="highlighted">Data retrieval failed. Please Go back and provide correct email and password.</p>
    </div> 
    <h1>
        <a href="javascript:history.back()"><button>Go Back</button></a>
    </h1>
</body>
</html>
