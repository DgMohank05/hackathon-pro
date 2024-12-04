package com.stech.service;

import com.stech.User;
import com.stech.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    private UserRepository userRepository;

    // Method to validate user login (plain text password)
    public boolean validateUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        return user != null;
    }

    // Method to save user (plain text password)
    public void saveUser(User user) {
        userRepository.save(user);  // Simply save the user with plain text password
    }

    // Method to register a new user (plain text password)
    public void registerUser(User newUser) {
        // Check if user already exists by username
        User existingUser = userRepository.findByUsername(newUser.getUsername());
        if (existingUser != null) {
            throw new IllegalArgumentException("Username is already taken");
        }

        // Save the new user with the plain text password
        saveUser(newUser);
    }
}
