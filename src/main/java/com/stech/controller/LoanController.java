package com.stech.controller;

import com.stech.model.Loan;
import com.stech.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class LoanController {

    @Autowired
    private LoanService loanService;

    // Display the user welcome page with loan details
    @GetMapping("/user/welcome")
    public String showUserWelcomePage(@SessionAttribute("name") String accountNumber, Model model) {
        Loan loan = loanService.getLoanDetailsByAccountNumber(accountNumber);

        if (loan != null) {
            model.addAttribute("loan", loan);
        }

        return "welcome-user"; // JSP page where loan details are displayed
    }

    // Display the apply loan form
    @GetMapping("/user/apply-loan")
    public String showLoanApplicationForm(Model model) {
        model.addAttribute("loanTypes", new String[]{"Car Loan", "Home Loan", "Education Loan", "Personal Loan"});
        return "apply-loan"; // JSP page for loan application form
    }

    // Handle loan application submission
    @PostMapping("/user/apply-loan")
    public String applyForLoan(@SessionAttribute("name") String accountNumber,
                               @RequestParam String loanType,
                               @RequestParam Double loanAmount,
                               @RequestParam Double interestRate,
                               @RequestParam Integer tenure,
                               Model model) {
        try {
            // Create a new loan application and save it
            loanService.applyForLoan(accountNumber, loanType, loanAmount, interestRate, tenure);

            model.addAttribute("successMessage", "Loan application submitted successfully.");
            return "redirect:/user/welcome"; // Redirect to the user welcome page
        } catch (IllegalArgumentException e) {
            model.addAttribute("errorMessage", e.getMessage());
            return "apply-loan"; // Redirect back to the form on error
        }
    }
}
