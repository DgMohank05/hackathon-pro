<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            background-color: #333;
            padding: 10px;
            color: white;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            right: 0;
            background-color: white;
            color: black;
            min-width: 150px;
            box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 8px 12px;
            text-decoration: none;
            display: block;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div>
            <a href="/user/dashboard">Dashboard</a>
            <a href="/user/myloans">My Loans</a>
            <a href="/user/apply-loan">Apply for Loan</a>
        </div>
        <div class="dropdown">
            <span>Profile</span>
            <div class="dropdown-content">
                <a href="/user/profile">My Profile</a>
                <a href="/user/myloans">My Loans</a>
                <a href="/user/help">Help</a>
                <a href="/logout">Logout</a>
            </div>
        </div>
    </div>

    <div class="content">
        <h1>Welcome, User!</h1>
        <p>Your Account Number: <strong th:text="${accountNumber}"></strong></p>
        <p>Here you can view your loan details and apply for new loans.</p>
    </div>
</body>
</html>
