package com.stech.service;

import com.stech.model.Loan;
import com.stech.repository.LoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoanService {

    @Autowired
    private LoanRepository loanRepository;

    // Get loan details by account number
    public Loan getLoanDetailsByAccountNumber(String accountNumber) {
        return loanRepository.findByAccountNumber(accountNumber);
    }

    // Update loan information after an EMI payment
    public void updateLoanAfterEmiPayment(String accountNumber, double emiPaid) {
        Loan loan = loanRepository.findByAccountNumber(accountNumber);

        if (loan != null) {
            double newPrincipal = loan.getPrincipalRemaining() - emiPaid;
            loan.setPrincipalRemaining(newPrincipal);

            // Decrease months remaining
            loan.setMonthsRemaining(loan.getMonthsRemaining() - 1);

            // If principal is fully paid, update the payment status
            if (loan.getPrincipalRemaining() <= 0) {
                loan.setPaymentStatus("Completed");
            }

            loanRepository.save(loan);
        }
    }

    // Apply for a new loan
    public void applyForLoan(String accountNumber, String loanType, double loanAmount, double interestRate, int tenure) {
        if (loanAmount <= 0 || interestRate <= 0 || tenure <= 0) {
            throw new IllegalArgumentException("Loan amount, interest rate, and tenure must be greater than zero.");
        }

        // Calculate EMI for the loan
        double monthlyRate = interestRate / 12 / 100;
        double emiAmount = (loanAmount * monthlyRate * Math.pow(1 + monthlyRate, tenure)) /
                           (Math.pow(1 + monthlyRate, tenure) - 1);

        // Total amount to be paid
        double totalAmount = emiAmount * tenure;

        // Create a new loan
        Loan loan = new Loan();
        loan.setAccountNumber(accountNumber);
        loan.setLoanType(loanType);
        loan.setLoanAmount(loanAmount);
        loan.setInterestRate(interestRate);
        loan.setEmiAmount(emiAmount);
        loan.setMonthsRemaining(tenure);
        loan.setPrincipalRemaining(loanAmount);
        loan.setTotalAmount(totalAmount);
        loan.setPaymentStatus("Pending"); // Default status

        // Save the new loan in the database
        loanRepository.save(loan);
    }
}
