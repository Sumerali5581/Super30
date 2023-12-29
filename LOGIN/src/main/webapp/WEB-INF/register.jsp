
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

        .container h1 {
            font-size: 13px; /* Smaller font size */
            font-weight: 10; /* Make the font even thinner */
            margin-bottom: 20px;
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

        .btn-register {
            background-color: #34a853;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 6px 12px; /* Smaller padding */
            cursor: pointer;
        }
        .registrationError {
            margin-top: 20px;
            font-size: 12px; /* Adjust font size */
            color: #333; }

        .btn-register:hover {
            background-color: #2d8e25;
        }
    </style>

    <script>
        function validateEmail() {
            var emailInput = document.getElementById("email");
            var email = emailInput.value;
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            if (!emailRegex.test(email)) {
                alert("Please enter a valid email address.");
                emailInput.focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
<div class="container">
    <form action="/set-user" method="post" onsubmit="return validateEmail();">
        <div class="form-group">
            <input type="text" name="userName" id="email" placeholder="Email or username" required>
        </div>
        <div class="form-group">
            <input type="password" name="password1" placeholder="Password" required>
        </div>
        <div class="form-group">
            <input type="password" name="password2" placeholder="Confirm Password" required>
        </div>
        <c:if test="${not empty registrationError}">
            <div>
                <p class="registrationError">${registrationError}</p>
            </div>
        </c:if>
        <div class="form-group">
            <input type="submit" value="Register" class="btn-register">
        </div>
    </form>
</div>
</body>
</html>
