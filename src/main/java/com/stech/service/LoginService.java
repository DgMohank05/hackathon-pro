package com.stech.service;

import com.stech.User;
import com.stech.repository.UserRepository;
import com.stech.repository.AdminRepository;
import com.stech.repository.BankerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private BankerRepository bankerRepository;

    @Autowired
    private AccountNumberGenerator accountNumberGenerator; // Injecting the AccountNumberGenerator

    // Method to validate user login (plain text password)
    public boolean validateUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        return user != null;
    }

    // Method to validate admin login (plain text password)
    public boolean validateAdmin(String username, String password) {
        return adminRepository.findByUsernameAndPassword(username, password) != null;
    }

    // Method to validate banker login (plain text password)
    public boolean validateBanker(String username, String password) {
        return bankerRepository.findByUsernameAndPassword(username, password) != null;
    }

    // Method to save user (plain text password)
    public void saveUser(User user) {
        userRepository.save(user); // Simply save the user with plain text password
    }

    // Method to register a new user (plain text password)
    public void registerUser(User newUser) {
        // Check if user already exists by username
        User existingUser = userRepository.findByUsername(newUser.getUsername());
        if (existingUser != null) {
            throw new IllegalArgumentException("Username is already taken");
        }

        // Save the new user first to get the generatsed ID (primary key)
        User savedUser = userRepository.save(newUser);

        // Generate and assign the account number
        String accountNumber = accountNumberGenerator.generateAccountNumber(savedUser.getId());
        savedUser.setAccountNumber(accountNumber);

        // Update the user with the generated account number
        userRepository.save(savedUser);
    }
}
