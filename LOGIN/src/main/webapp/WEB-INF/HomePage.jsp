<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Healthcare Services</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            background-color: #4285f4; /* Header background color */
            color: #fff; /* Text color */
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
        }

        nav {
            background-color: #333; /* Navbar background color */
            color: #fff; /* Text color */
            text-align: center;
            padding: 10px;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            margin: 0 15px;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .content {
            padding: 20px;
        }

        .services {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .service {
            width: 30%; /* Adjust the width as needed */
            margin: 10px;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
        }

        footer {
            background-color: #333; /* Footer background color */
            color: #fff; /* Text color */
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>
<header>
    <h1>Welcome to Our Healthcare Services ${UserName}</h1>
</header>

<nav>
    <a href="#">Home</a>
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#">Contact</a>
</nav>

<div class="container">
    <div class="content">
        <h2>Our Services</h2>
        <div class="services">
            <div class="service">
                <h3>Medical Consultation</h3>
                <p>Expert medical advice and consultation.</p>
            </div>
            <div class="service">
                <h3>Health Checkups</h3>
                <p>Comprehensive health checkup packages.</p>
            </div>
            <div class="service">
                <h3>Specialized Treatments</h3>
                <p>Specialized treatments for various conditions.</p>
            </div>
        </div>
    </div>
</div>

<footer>
    &copy; 2023 Healthcare Services. All rights reserved.
</footer>
</body>
</html>
