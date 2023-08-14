<%@page import="com.editservlet.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unregister Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 0;
        padding: 50px;
        background-color: #f5f5f5;
    }
    form {
        width: 500px;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #007BFF;
    }
    h3 {
        color: #333;
        margin-top: 10px;
        text-align: left;
    }
    .input-container {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
    }
    .input-container label {
        flex: 1;
        text-align: right;
        margin-right: 10px;
    }
    .input-container input {
        flex: 2;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 3px;
        width: 100%; /* Set the width to 100% */
    }
    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 3px;
        transition: background-color 0.3s ease;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
<script>
    // Function to show a pop-up when trying to edit the read-only email field
    function showReadOnlyAlert() {
        alert("The email field is read-only.");
    }

    // Function to show a confirmation pop-up when submitting the form
    function showUnregisterConfirmation() {
        if (confirm("Are you sure you want to Unregister?")) {
            // Submit the form
            document.forms["unregisterForm"].submit();
        }
    }
</script>
</head>
<body>
    <form method="get" action="DeleteServlet" name="unregisterForm">
        <fieldset>
            <legend>
                <h1>Unregister Form</h1>
            </legend>

            <%
            String email = request.getParameter("email");
            %>
            <h3>Provide password to Unregister:</h3>

            <div class="input-container">
               <label for="email">Your Email Id:</label>
               <input type="email" placeholder="Enter Email" name="email" value="<%= email %>" readonly onclick="showReadOnlyAlert()"/>
            </div>

            <div class="input-container">
               <label for="password">Enter Password:</label>
               <input type="password" name="password" placeholder="Enter Password" required />
            </div>

            <div>
                <input type="submit" value="Unregister">
            </div>
        </fieldset>
    </form>
</body>
</html>
 


