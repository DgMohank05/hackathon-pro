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

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 1.1em;
        }
        table, th, td {
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
            font-weight: 600;
        }
        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
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
	<div class="navbar">
	    <div class="nav-links">
	        <a href="/dashboard">Dashboard</a> <!-- Redirect to Login Page -->
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

        <h2>Loan Details</h2>
        <table>
            <tr>
                <th>Loan Amount</th>
                <td>${loan.loanAmount}</td>
            </tr>
            <tr>
                <th>Interest Rate</th>
                <td>${loan.interestRate}%</td>
            </tr>
            <tr>
                <th>EMI Amount</th>
                <td>${loan.emiAmount}</td>
            </tr>
            <tr>
                <th>Months Remaining</th>
                <td>${loan.monthsRemaining}</td>
            </tr>
            <tr>
                <th>Principal Remaining</th>
                <td>${loan.principalRemaining}</td>
            </tr>
            <tr>
                <th>Total Amount</th>
                <td>${loan.totalAmount}</td>
            </tr>
            <tr>
                <th>Payment Status</th>
                <td>${loan.paymentStatus}</td>
            </tr>
        </table>

        <!-- Button for Applying for New Loan -->
        <div class="text-center">
            <a href="/user/apply-loan" class="btn-primary">Apply for a New Loan</a>
        </div>
    </div>
</body>
</html>
