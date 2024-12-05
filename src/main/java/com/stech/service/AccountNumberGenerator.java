package com.stech.service;

import org.springframework.stereotype.Service;

@Service
public class AccountNumberGenerator {

    private static final String PREFIX = "990007";

    public String generateAccountNumber(Long userId) {
        String accountNumber = PREFIX + String.format("%010d", userId);
        System.out.println("Generated Account Number: " + accountNumber); // Debug
        return accountNumber;
    }
}


