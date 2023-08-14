<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
        .button-container {
            margin-top: 20px;
        }
        button {
            background-color: #FF6347;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049;
        }
        /* ... (existing styles) ... */
        .error-icon {
            font-size: 48px;
            color: #FF6347;
            margin-bottom: 10px;
        }
        .error-text {
            background-color: #FF6347;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
     <div class="message-container">
        <span class="error-icon">&#9888;</span>
    </div> 
    <h1>You are not registered.</h1>
    <p class="highlighted error-text">Login failed due to Incorrect Email or Password, Please provide correct credentials!</p>
    <p>Click on the button below to return to the previous page.</p>
    <div class="button-container">
        <a href="javascript:history.back()"><button>Back</button></a>
    </div>
</body>
</html>
