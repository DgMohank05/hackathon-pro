<!DOCTYPE html>
<html>
<head>
    <title>Loan Tracker - About Us</title>
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
        .dashboard {
            display: flex;
            justify-content: space-around;
            margin: 2em 0;
        }
        .dashboard a {
            display: block;
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 1em;
            border-radius: 8px;
            width: 30%;
            text-decoration: none;
            font-size: 1.2em;
        }
        .dashboard a:hover {
            background-color: #0056b3;
        }
        footer {
            text-align: center;
            margin-top: 2em;
            background-color: #f1f1f1;
            padding: 1em 0;
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
        <h2>About Us</h2>
        <p>Welcome to Loan Tracker! We provide solutions for managing loans and finances efficiently.</p>
    </div>

    

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Loan Tracker. All rights reserved.</p>
    </footer>
</body>
</html>
