<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column; /* Arrange elements vertically */
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .form-container {
            padding: 60px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 80%; /* Adjust as needed */
            margin: 0 auto; /* Center the form */
        }

        h1 {
            color: #333;
        }

        h3 {
            color: #666;
        }

        .input-field {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .input-container {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            cursor: pointer;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        legend {
            font-weight: bold;
            padding: 10px 0;
            color: #333;
        }
    </style>
    
    <script>
        // Toggle password visibility
        document.addEventListener("DOMContentLoaded", function () {
            const togglePasswordElement = document.querySelector(".toggle-password");
            const passwordInput = document.querySelector(".input-field-password");
            
            togglePasswordElement.addEventListener("click", function () {
                const passwordInputType = passwordInput.getAttribute("type");
                passwordInput.setAttribute("type", passwordInputType === "password" ? "text" : "password");
            });
        });
    </script>
</head>
<body>
    <div class="form-container">
        <form method="post" action="LoginServlet">
            <fieldset>
                <legend><b><h1>Login Form</h1></b></legend>
                <div>
                    <h3>Email:</h3>
                    <input class="input-field" type="email" name="email" placeholder="Enter your Email" />
                </div>
                <div>
                    <h3>Password:</h3>
                    <div class="input-container">
                        <input class="input-field input-field-password" type="password" name="password" placeholder="Enter your Password" />
                        <i class="bi bi-eye-slash toggle-password"></i>
                    </div>
                </div>
                <br>
                <div class="btn">
                    <input class="button" type="submit" value="Login">
                </div>
            </fieldset>
        </form>
    </div>
</body>
</html>
