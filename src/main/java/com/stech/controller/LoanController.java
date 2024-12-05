package com.stech.controller;

import com.stech.Loan;
import com.stech.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class LoanController {

    @Autowired
    private LoanService loanService;

    @GetMapping("/user/welcome")
    public String showUserWelcomePage(@SessionAttribute("name") String accountNumber, Model model) {
        Loan loan = loanService.getLoanDetailsByAccountNumber(accountNumber);
        
        if (loan != null) {
            model.addAttribute("loan", loan);
        }
        
        return "welcome-user"; // JSP page where loan details are displayed
    }
}
