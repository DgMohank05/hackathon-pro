<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Loan Tracker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 1em 0;
        }
        h1 {
            margin: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 2em;
            background-color: white;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .content {
            margin-bottom: 20px;
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
    <header>
        <h1>About Us</h1>
    </header>

    <div class="container">
        <div class="content">
            <p>Welcome to Loan Tracker! We provide solutions for managing loans and finances efficiently. Whether you're a user looking for loans, a banker verifying applications, or an admin managing everything, our platform makes it easy for all.</p>
        </div>

        <!-- Dashboard with Links -->
        <div class="dashboard">
            <a href="/">Home</a>
            <a href="/login">Login</a>
            <a href="/emi-calculator">EMI Calculator</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Loan Tracker. All rights reserved.</p>
    </footer>
</body>
</html>
