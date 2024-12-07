<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #343a40;
            color: white;
            padding: 15px 0;
            text-align: center;
        }
        nav {
            background-color: #007bff;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: #fff;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        label span {
            color: red;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .optional {
            font-size: 0.9em;
            color: gray;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
        footer {
            text-align: center;
            margin-top: 2em;
            background-color: #f1f1f1;
            padding: 10px;
            color: #555;
        }
    </style>
    <script>
        function validateForm() {
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                document.getElementById("error").innerText = "Passwords do not match!";
                return false;
            }

            // Add other validation as needed
            return true;
        }
    </script>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Loan Tracker Application</h1>
        <p>Your one-stop solution for tracking loans and managing finances.</p>
    </header>

    <!-- Navigation Bar -->
    <nav>
        <a href="/">Home</a>
        <a href="/about-us">About Us</a>
        <a href="/emi-calculator">EMI Calculator</a>
        <form action="/login" method="get" style="display: inline;">
            <button type="submit">Login</button>
        </form>
    </nav>

    <!-- Sign-Up Form Section -->
    <div class="container">
        <h2>Sign Up</h2>
        <form method="post" action="/signup" onsubmit="return validateForm()">
            <label for="username">User Name: <span>*</span></label>
            <input type="text" id="username" name="username" required>

            <label for="firstName">First Name: <span>*</span></label>
            <input type="text" id="firstName" name="firstName" required>

            <label for="middleName">Middle Name: <span class="optional">(Optional)</span></label>
            <input type="text" id="middleName" name="middleName">

            <label for="lastName">Last Name: <span>*</span></label>
            <input type="text" id="lastName" name="lastName" required>

            <label for="email">Email ID: <span>*</span></label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone Number: <span>*</span></label>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" placeholder="10-digit number" required>

            <label for="password">Password: <span>*</span></label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password: <span>*</span></label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <p id="error" class="error"></p>

            <button type="submit">Sign Up</button>
        </form>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Loan Tracker. All rights reserved.</p>
    </footer>
</body>
</html>
