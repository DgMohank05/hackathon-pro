<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMI Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 15px 0;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>EMI Calculator</h1>
    </header>

    <div class="container">
        <div class="input-group">
            <label for="principal">Loan Amount (₹):</label>
            <input type="number" id="principal" required>
        </div>
        <div class="input-group">
            <label for="rate">Annual Interest Rate (%):</label>
            <input type="number" id="rate" step="0.01" required>
        </div>
        <div class="input-group">
            <label for="tenure">Loan Tenure (Months):</label>
            <input type="number" id="tenure" required>
        </div>
        <button onclick="calculateEMI()">Calculate EMI</button>

        <div id="result"></div>
    </div>

    <footer>
        <a href="/">Back to Home</a>
    </footer>

    <script>
        function calculateEMI() {
            const principal = parseFloat(document.getElementById("principal").value);
            const rate = parseFloat(document.getElementById("rate").value) / 12 / 100; // Monthly interest rate
            const tenure = parseInt(document.getElementById("tenure").value); // Loan tenure in months

            // Basic validation for inputs
            if (!principal || !rate || !tenure) {
                alert("Please enter valid inputs.");
                return;
            }

            // EMI calculation formula using a simpler method
            const emi = (principal * rate * (1 + rate) * tenure) / ((1 + rate) * tenure - 1);

            // Ensure result is a valid number and display it
            if (!isNaN(emi)) {
                document.getElementById("result").innerText = `Total EMI: ${emi.toFixed(2)}`;
            } else {
				const formattedEMI = new Intl.NumberFormat('en-IN', { maximumSignificantDigits: 3 }).format(emi.toFixed(2));
				document.getElementById("result").innerText = "Total EMI: " + formattedEMI;


            }
        }
    </script>
</body>
</html>
