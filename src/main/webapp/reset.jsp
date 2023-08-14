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
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-top: 0;
            color: #333;
        }

        h3 {
            margin: 10px 0;
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

        .button[type="reset"] {
            background-color: #FF6347;
            margin-left: 10px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .legend {
            text-align: center;
            font-weight: bold;
        }
    </style>
    
   <script>
        function showForgotPasswordAlert() {
            if (confirm("It seems you forgot your password? Do you want to receive an OTP on your email?")) {
                // Send OTP logic goes here
                var email = document.getElementById("email").value;
                // Redirect to the page with OTP input and password reset
                window.location.href = "reset_with_otp.jsp?email=" + encodeURIComponent(email);
            }
        }
        
        // Toggle password visibility
        document.addEventListener("DOMContentLoaded", function () {
            const togglePasswordElements = document.querySelectorAll(".toggle-password");
            
            togglePasswordElements.forEach(function (toggleElement) {
                toggleElement.addEventListener("click", function () {
                    const passwordInput = this.parentElement.querySelector(".input-field-password");
                    const passwordInputType = passwordInput.getAttribute("type");
                    passwordInput.setAttribute("type", passwordInputType === "password" ? "text" : "password");
                });
            });
        });
    </script>
</head>
<body>
    <form method="post" action="PasswordResetServlet">
        <fieldset>
            <legend><b>Reset Password</b></legend>
            <div>
                <h3>Email:</h3>
                <div class="input-container">
                <input class="input-field input-field-password" type="email" id="email" name="email" placeholder="Enter your Email">
                </div>
            </div>

            <div>
                <h3>Old Password:</h3>
                <div class="input-container">
                    <input class="input-field input-field-password" type="password" name="oldpassword" placeholder="Enter your Old Password">
                    <i class="bi bi-eye-slash toggle-password"></i>
                </div>
            </div>

            <div>
                <h3>New Password:</h3>
                <div class="input-container">
                    <input class="input-field input-field-password" type="password" name="newpassword" placeholder="Enter your New Password">
                    <i class="bi bi-eye-slash toggle-password"></i>
                </div>
            </div>

            <div>
                <h3>Confirm Password:</h3>
                <div class="input-container">
                    <input class="input-field input-field-password" type="password" name="confirmpassword" placeholder="Confirm New Password">
                    <i class="bi bi-eye-slash toggle-password"></i>
                </div>
            </div>
            <br>

            <div class="btn">
                <input class="button" type="submit"> <input class="button" type="reset">
            </div>
        </fieldset>
    </form>
</body>
</html>
