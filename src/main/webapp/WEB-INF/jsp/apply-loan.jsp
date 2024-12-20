<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Welcome</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #007bff;
            padding: 12px 20px;
            color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .navbar .nav-links {
            display: flex;
            align-items: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: 500;
            font-size: 16px;
        }
        .navbar a:hover {
            text-decoration: underline;
            color: #ffeb3b;
        }

        /* Dropdown Styling */
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            right: 0;
            background-color: #fff;
            color: #333;
            min-width: 150px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 8px;
        }
        .dropdown-content a {
            color: #333;
            padding: 12px 15px;
            text-decoration: none;
            display: block;
            border-bottom: 1px solid #ddd;
        }
        .dropdown-content a:last-child {
            border-bottom: none;
        }
        .dropdown-content a:hover {
            background-color: #007bff;
            color: white;
        }
        .dropdown:hover .dropdown-content {
            display: block;
            animation: fadeIn 0.3s ease-in-out;
        }

        /* Content Styling */
        .content {
            padding: 25px;
            max-width: 900px;
            margin: 30px auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            animation: slideIn 0.5s ease-in-out;
            background-color: #ffffff;
            border-top: 5px solid #007bff;
            transform: translateX(-100%);
            animation: slideInFromLeft 0.5s forwards;
        }
        h1, h2 {
            color: #333;
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
        }
        p {
            text-align: center;
            font-size: 1.2em;
            color: #555;
        }

        /* Banner Images */
        .loan-banners {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-top: 20px;
        }
        .loan-banner {
            position: relative;
            background-size: cover;
            background-position: center;
            height: 250px;
            border-radius: 8px;
            overflow: hidden;
            cursor: pointer;
            transition: transform 0.3s ease;
        }
        .loan-banner:hover {
            transform: scale(1.05);
        }
        .loan-banner a {
            display: block;
            width: 100%;
            height: 100%;
        }
        .loan-banner .banner-text {
            position: absolute;
            bottom: 15px;
            left: 15px;
            color: white;
            font-size: 20px;
            font-weight: bold;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 5px;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        @keyframes slideInFromLeft {
            from {
                transform: translateX(-100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        /* Button Styling */
        .btn-primary {
            background-color: #28a745;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        .btn-primary:hover {
            background-color: #218838;
        }

        .btn-secondary {
            background-color: #ffc107;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            text-align: center;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }
        .btn-secondary:hover {
            background-color: #e0a800;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="nav-links">
            <a href="/user/welcome-user">Dashboard</a> <!-- Redirect to Welcome Page -->
            <a href="/user/myloans">My Loans</a>
            <a href="/user/apply-loan">Apply for Loan</a>
            <a href="/emi-calculator">EMI Calculator</a> <!-- EMI Calculator Redirect -->
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

    <!-- Content -->
    <div class="content">
        <h1>Welcome, ${name}!</h1>
        <p>Your Account Number: <strong>${accountNumber}</strong></p>
        <p>Here you can view your loan details and apply for new loans.</p>

        <h2>Loan Options</h2>

        <!-- Loan Banners Grid -->
        <div class="loan-banners">
            <!-- Loan 1 Banner -->
            <div class="loan-banner" style="background-image: url('images/loan1-banner.jpg');">
                <a href="/user/loan-application/1">
                    <div class="banner-text">Loan 1: Personal Loan</div>
                </a>
            </div>

            <!-- Loan 2 Banner -->
            <div class="loan-banner" style="background-image: url('images/loan2-banner.jpg');">
                <a href="/user/loan-application/2">
                    <div class="banner-text">Loan 2: Home Loan</div>
                </a>
            </div>

            <!-- Loan 3 Banner -->
            <div class="loan-banner" style="background-image: url('images/loan3-banner.jpg');">
                <a href="/user/loan-application/3">
                    <div class="banner-text">Loan 3: Car Loan</div>
                </a>
            </div>

            <!-- Loan 4 Banner -->
            <div class="loan-banner" style="background-image: url('images/loan4-banner.jpg');">
                <a href="/user/loan-application/4">
                    <div class="banner-text">Loan 4: Education Loan</div>
                </a>
            </div>
        </div>
    </div>
</body>
</html>
