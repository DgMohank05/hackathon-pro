<!DOCTYPE html>
<html>
<head>
    <title>Loan Tracker - Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #343a40;
            color: #fff;
            padding: 10px;
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
            padding: 20px;
            text-align: center;
        }
        button {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #218838;
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
        <a href="/about-us">About Us</a>
        <a href="/emi-calculator">EMI Calculator</a>
        <form action="/login" method="get" style="display: inline;">
            <button type="submit">Login / Sign Up</button>
        </form>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <h2>Welcome to the Loan Tracker Application!</h2>
        <p>Track loans, calculate EMIs, and manage your finances with ease.</p>
        <p>Click the Login/Sign Up button to access your account.</p>
    </div>
</body>
</html>
