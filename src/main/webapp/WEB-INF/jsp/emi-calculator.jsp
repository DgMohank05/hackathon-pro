<!DOCTYPE html>
<html>
<head>
    <title>EMI Calculator</title>
    <script>
        function calculateEMI() {
            const principal = parseFloat(document.getElementById("principal").value);
            const rate = parseFloat(document.getElementById("rate").value) / 12 / 100;
            const tenure = parseInt(document.getElementById("tenure").value);

            if (!principal || !rate || !tenure) {
                alert("Please enter valid inputs.");
                return;
            }

            const emi = (principal * rate * Math.pow(1 + rate, tenure)) / (Math.pow(1 + rate, tenure) - 1);
            document.getElementById("result").innerText = `EMI: ₹${emi.toFixed(2)}`;
        }
    </script>
</head>
<body>
    <header>
        <h1>EMI Calculator</h1>
    </header>
    <div>
        <label for="principal">Loan Amount (₹):</label>
        <input type="number" id="principal" required><br>
        <label for="rate">Annual Interest Rate (%):</label>
        <input type="number" id="rate" step="0.01" required><br>
        <label for="tenure">Loan Tenure (Months):</label>
        <input type="number" id="tenure" required><br>
        <button onclick="calculateEMI()">Calculate EMI</button>
        <p id="result"></p>
    </div>
    <nav>
        <a href="/">Back to Home</a>
    </nav>
</body>
</html>
