<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Your head content here -->
     <meta charset="UTF-8">
    <title>Unregister Status</title>
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
            margin-top: 10px;
        }
        .message-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            max-width: 80%;
            text-align: center;
        }
        .success {
            color: #4CAF50;
        }
        .error {
            color: #FF5733;
        }
        .icon {
            font-size: 48px;
            margin-bottom: 10px;
        }
        .highlighted {
            background-color: #f2f2f2;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .button-container {
            margin-top: 20px;
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
    <h1>Unregister Status</h1>
    <div class="message-container success">
        <span class="icon">&#10004;</span>
        <p class="highlighted">You have been successfully unregistered.</p>
    </div>
    <div class="button-container">
        <a href="index.html"><button>Home</button></a>
    </div>
</body>
</html>
