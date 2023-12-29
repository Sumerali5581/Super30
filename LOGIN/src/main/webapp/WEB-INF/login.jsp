
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>

        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 40px;
            text-align: center;
            width: 140%;
            max-width: 800px;
        }

        .container h2 {
            color: red
        }

        .form-group {
            margin-bottom: 10px;
        }

        input[type="text"], input[type="password"] {
            width: 45%;
            padding: 3px; /* Smaller padding */
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 12px; /* Smaller font size */
        }

        .btn-login {
            background-color: #4285f4;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 3px 6px; /* Smaller padding */
            cursor: pointer;
        }

        .btn-login:hover {
            background-color: #357ae8;
        }

        .btn-register {
            background-color: #34a853;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 6px 12px; /* Smaller padding */
            cursor: pointer;
        }

        .btn-register:hover {
            background-color: #2d8e25;
        }

        .error {
            margin-top: 20px;
            font-size: 12px; /* Adjust font size */
            color: #333;
        }

        .
        guide-statement {
            font-weight: 4;
            font-size: 1px; /* Adjust font size */
            color: #333;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="h">Welcome to our healthcare portal.</h1>
    <h1>Log in for personalized care and resources</h1>
    <c:if test="${not empty error}">
        <div>
            <h2 class="error">${error}</h2>
        </div>
    </c:if>
    <form action="/login" method="post" onsubmit="return validateForm()">

        <div class="form-group">
            <input type="text" name="userName" id="email"
                   placeholder="Email or username" required>
            <div  id="emailError" class="error"></div>
        </div>
        <div class="form-group">
            <input type="password" name="password" placeholder="Password"
                   required>
        </div>
        <div class="form-group">
            <input type="submit" value="Login" class="btn-login">
        </div>


        <p class="guide-statement">
            <a href="#" onclick="goToRegister()">Create Account</a>
        </p>
    </form>
</div>
<script type="text/javascript">
    function goToRegister() {
        window.location.href = "/register";
    }

    function validateForm() {
        var email = document.getElementById("email").value;
        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

        if (!email.match(emailRegex)) {
            document.getElementById("emailError").innerHTML = "Please enter a valid email address.";
            return false;
        } else {
            document.getElementById("emailError").innerHTML = "";
            return true;
        }
    }
</script>
</body>
</html>

