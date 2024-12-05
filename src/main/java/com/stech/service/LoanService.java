package com.stech.service;

import com.stech.Loan;
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
}
