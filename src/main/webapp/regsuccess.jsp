<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
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
            color: #4CAF50;
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
      /*   .success-icon {
            font-size: 48px;
            color: #4CAF50;
            margin-bottom: 10px;
        }
        .highlighted {
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        } */
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
    <h1>Registration Successful</h1>
    <div class="message-container">
        <span class="success-icon">&#10004;</span>
    </div> 
    <p class="highlighted">You are Registered successfully.</p>
    <p>Click on the button below to Search By Email Address.</p>
    <div class="button-container">
        <a href="search.html"><button>Search By Email Address</button></a>
        <a href="index.html"><button>Home</button></a>
    </div>
</body>
</html>
