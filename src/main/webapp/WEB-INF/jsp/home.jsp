<!DOCTYPE html>
<html>
<head>
    <title>Loan Tracker - Home</title>
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
            max-width: 800px;
            margin: auto;
            text-align: justify;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
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
            color: #555;
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
        <h2>Welcome to the Loan Tracker Application!</h2>
        <p>
            Our Loan Tracker application is a comprehensive solution for managing loans and financial processes 
            seamlessly. Built using the powerful Spring framework in Java, the application is tailored to address 
            the needs of users, bankers, and administrators in a secure and user-friendly environment.
        </p>
        <p>
            The application enables general users to apply for loans with a simple registration process. Bankers 
            are provided tools to verify these applications, ensuring accuracy and trustworthiness. Finally, 
            administrators oversee the loan approval process, assigning unique 10-digit account numbers upon 
            successful verification and disbursal. Users can easily track the status of their loan applications, 
            ensuring transparency at every step.
        </p>
        <p>
            Features such as a login system tailored for different roles, an EMI calculator for financial planning, 
            and a robust database backend make this application a versatile tool for modern financial management. 
            The intuitive dashboard allows users to navigate effortlessly between functionalities. This project 
            demonstrates the effective use of technologies like Spring Boot, Spring Data JPA, and a scalable 
            database for real-world applications.
        </p>
        <p>
            We hope this application serves as a stepping stone towards building smarter, user-centric financial 
            management systems. Thank you for being a part of this journey, and we look forward to enhancing the 
            experience further!
        </p>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Loan Tracker. All rights reserved.</p>
        <p>Contact us: support@loantracker.com | +91 8790737253</p>
    </footer>
</body>
</html>
