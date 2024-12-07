<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Tracker - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #343a40;
            color: #fff;
            padding: 10px 20px;
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
        nav form {
            display: inline;
        }
        nav button {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        nav button:hover {
            background-color: #218838;
        }
        .container {
            margin: 50px auto;
            width: 400px;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="password"], select {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .forgot-password {
            text-align: right;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .forgot-password a {
            color: #007bff;
            text-decoration: none;
            font-size: 0.9em;
        }
        .forgot-password a:hover {
            text-decoration: underline;
        }
        .signup-link {
            text-align: center;
            margin-top: 10px;
        }
        .signup-link a {
            color: #007bff;
            text-decoration: none;
        }
        .signup-link a:hover {
            text-decoration: underline;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            background-color: #f1f1f1;
            padding: 10px;
            color: #555;
        }
    </style>
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
        <a href="/login">Login</a>
        <a href="/signup">Sign Up</a>
        <a href="/emi-calculator">EMI Calculator</a>
        <form action="/login" method="get" style="display: inline;">
            <button type="submit">Login</button>
        </form>
    </nav>

    <!-- Login Form Section -->
    <div class="container">
        <h1>Login</h1>
        <form method="post" action="/login">
            <!-- Role Dropdown Placed at the Top -->
            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="user">User</option>
                <option value="banker">Banker</option>
                <option value="admin">Admin</option>
            </select>

            <label for="name">User Name:</label>
            <input type="text" id="name" name="name" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <!-- Forgot Password Link -->
            <div class="forgot-password">
                <a href="/forgot-password">Forgot Password?</a>
            </div>

            <input type="submit" value="Login" />
        </form>
        <div class="signup-link">
            Don't have an account? <a href="/signup">Sign Up Here</a>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Loan Tracker. All rights reserved.</p>
    </footer>
</body>
</html>
