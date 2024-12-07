<%@ page contentType="text/html;charset=UTF-8" %>
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
        .content {
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
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
        <h1>Welcome, ${name}!</h1> <!-- Displaying the full name -->
        <p>Your Account Number: <strong>${accountNumber}</strong></p> <!-- Displaying the account number -->
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
    </div>
</body>
</html>
