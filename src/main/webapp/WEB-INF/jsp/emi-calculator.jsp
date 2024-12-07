<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMI Calculator</title>
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
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .input-group {
            margin-bottom: 20px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        #result {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
        }
        footer {
            text-align: center;
            margin-top: 2em;
            background-color: #f1f1f1;
            padding: 10px;
            color: #555;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>EMI Calculator</h1>
        <p>Calculate your monthly installments easily.</p>
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
        <h2>Calculate Your EMI</h2>
        <div class="input-group">
            <label for="principal">Loan Amount:</label>
            <input type="number" id="principal" placeholder="Enter loan amount" required>
        </div>
        <div class="input-group">
            <label for="rate">Annual Interest Rate (%):</label>
            <input type="number" id="rate" step="0.01" placeholder="Enter annual interest rate" required>
        </div>
        <div class="input-group">
            <label for="tenure">Loan Tenure (Months):</label>
            <input type="number" id="tenure" placeholder="Enter tenure in months" required>
        </div>
        <button onclick="calculateEMI()">Calculate EMI</button>

        <div id="result"></div>
    </div>

    <footer>
        <p>&copy; 2024 Loan Tracker. All rights reserved.</p>
    </footer>

    <script>
        function calculateEMI() {
            // Fetch input values
            const principal = parseFloat(document.getElementById("principal").value);
            const annualRate = parseFloat(document.getElementById("rate").value);
            const tenure = parseInt(document.getElementById("tenure").value);

            // Validate inputs
            if (!principal || !annualRate || !tenure || principal <= 0 || annualRate <= 0 || tenure <= 0) {
                alert("Please enter valid positive values for all inputs.");
                return;
            }

            // EMI calculation logic
            const monthlyRate = annualRate / 12 / 100; // Convert annual rate to monthly rate
            const calculatedEMI = (principal * monthlyRate * Math.pow(1 + monthlyRate, tenure)) /
                                  (Math.pow(1 + monthlyRate, tenure) - 1);

            // Debug: Log calculated EMI
            console.log("Calculated EMI:", calculatedEMI);

            // Update DOM
            const resultElement = document.getElementById("result");
            document.getElementById("result").innerHTML = `Calculated EMI: ${calculatedEMI.toFixed(2)}`;
        }
    </script>
</body>
</html>
