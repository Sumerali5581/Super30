<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Healthcare App</title>
    <link rel="stylesheet" href="styles.css">

    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">

    <style>
        /* Reset some default styles */
        body, h1, h2, h3, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Apply styles to the header and navigation */
        header {
            background-color: #3498db; /* Rich blue color */
            color: #fff;
            padding: 10px 0;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            margin-right: auto;
            color: #f39c12; /* Golden yellow */
        }

        .nav-links {
            list-style: none;
            display: flex;
            margin-right: auto;
        }

        .nav-links li {
            margin-right: 20px;
            position: relative;
        }

        .nav-links a {
            text-decoration: none;
            color: #333; /* Dark gray text */
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #e74c3c; /* Elegant red on hover */
        }

        .dropdown {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #fff;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .nav-links li:hover .dropdown {
            display: block;
        }

        .dropdown-item {
            padding: 10px;
        }

        .user-actions {
            display: flex;
        }

        .user-actions a {
            text-decoration: none;
            color: #333; /* Dark gray text */
            font-weight: bold;
            margin-left: 20px;
            transition: color 0.3s ease;
        }

        .user-actions a:hover {
            color: #2ecc71; /* Soothing green on hover */
        }
    </style>

</head>
<body>
<header>
    <nav>
        <div class="logo">
            Healthcare App <i class="fas fa-hospital"></i>
        </div>
        <ul class="nav-links">
            <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
            <li class="has-dropdown">
                <a href="#"><i class="fas fa-stethoscope"></i> Services</a>
                <ul class="dropdown">
                    <li class="dropdown-item"><a href="#">Service 1</a></li>
                    <li class="dropdown-item"><a href="#">Service 2</a></li>
                    <li class="dropdown-item"><a href="#">Service 3</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
            <li><a href="#"><i class="fas fa-envelope"></i> Contact</a></li>
        </ul>
        <div class="user-actions">
            <a href="/" onclick="dashCheck()"><i class="fas fa-sign-in-alt"></i> Login</a>
            <a href="register" onclick="goToRegister()"><i class="fas fa-user-plus"></i> Sign Up</a>
            <!-- User Profile Dropdown -->
            <div class="dropdown">
                <button onclick="toggleProfileDropdown()">
                    <i class="fas fa-user"></i> User Profile
                </button>
                <div id="profileDropdownContent">
                    <a href="#">My Profile</a>
                    <a href="#">Settings</a>
                    <a href="#">Logout</a>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function goToRegister(){
                window.location.href = "/register";

            }
        </script>
        <script type="text/javascript">
            function dashCheck(){
                window.location.href = "/dash";
            }
        </script>
    </nav>
</header>

<!-- healthcare content goes here -->

<script>
    function toggleProfileDropdown() {
        var dropdownContent = document.getElementById("profileDropdownContent");
        dropdownContent.classList.toggle("show");
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
        if (!event.target.matches('.fas fa-user')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }
</script>
</body>
</html>
