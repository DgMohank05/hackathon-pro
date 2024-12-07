package com.stech.service;

import com.stech.repository.UserRepository;
import com.stech.model.User;
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

    // Validate login and return role if valid, null otherwise
    public String validateLogin(String username, String password) {
        if (validateUser(username, password)) {
            return "user";
        } else if (validateBanker(username, password)) {
            return "banker";
        } else if (validateAdmin(username, password)) {
            return "admin";
        }
        return null; // Invalid login
    }

    // Validate user login
    public boolean validateUser(String username, String password) {
        return userRepository.findByUsernameAndPassword(username, password) != null;
    }

    // Validate admin login
    public boolean validateAdmin(String username, String password) {
        return adminRepository.findByUsernameAndPassword(username, password) != null;
    }

    // Validate banker login
    public boolean validateBanker(String username, String password) {
        return bankerRepository.findByUsernameAndPassword(username, password) != null;
    }

    // Register a new user and assign an account number
    public void registerUser(User newUser) {
        // Check if the username is already taken
        User existingUser = userRepository.findByUsername(newUser.getUsername());
        if (existingUser != null) {
            throw new IllegalArgumentException("Username is already taken");
        }

        // Save the new user
        User savedUser = userRepository.save(newUser);  // Save user first to get an ID

        // Generate and assign a unique account number after user is saved
        String accountNumber = accountNumberGenerator.generateAccountNumber(savedUser.getId());
        savedUser.setAccountNumber(accountNumber);

        // Update the user with the generated account number
        userRepository.save(savedUser);  // Save the updated user with account number
    }

    // Find user by username
    public User findUserByUsername(String username) {
        return userRepository.findByUsername(username);  // This should return the full user object including account number
    }
}

