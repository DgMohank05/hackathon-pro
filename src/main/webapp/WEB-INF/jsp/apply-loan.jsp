<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply for Loan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .form-container {
            margin-top: 20px;
            width: 400px;
            margin-left: auto;
            margin-right: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-container input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }
        .form-container button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Apply for Loan</h2>
        <form action="/user/apply-loan" method="POST">
            <label for="loanType">Loan Type</label>
            <select name="loanType" id="loanType" required>
                <option value="Car Loan">Car Loan</option>
                <option value="Home Loan">Home Loan</option>
                <option value="Education Loan">Education Loan</option>
                <option value="Personal Loan">Personal Loan</option>
            </select>

            <label for="loanAmount">Loan Amount</label>
            <input type="number" name="loanAmount" id="loanAmount" required>

            <label for="interestRate">Interest Rate</label>
            <input type="number" name="interestRate" id="interestRate" required>

            <label for="tenure">Loan Tenure (in months)</label>
            <input type="number" name="tenure" id="tenure" required>

            <button type="submit">Submit Application</button>
        </form>
    </div>

</body>
</html>
