package com.stech.controller;

import com.stech.model.User;
import com.stech.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("name")
public class LoginController {

    @Autowired
    private LoginService service;

    // Home Page
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String viewHomePage() {
        return "home"; // Ensure home.jsp exists in WEB-INF/jsp/
    }

    // About Us Page
    @RequestMapping(value = "/about-us", method = RequestMethod.GET)
    public String viewAboutUsPage() {
        return "about-us"; // Ensure about-us.jsp exists in WEB-INF/jsp/
    }

    // EMI Calculator Page
    @RequestMapping(value = "/emi-calculator", method = RequestMethod.GET)
    public String viewEmiCalculatorPage() {
        return "emi-calculator"; // Ensure emi-calculator.jsp exists in WEB-INF/jsp/
    }

    // Login Page (GET)
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String viewLoginPage() {
        return "login"; // Ensure login.jsp exists in WEB-INF/jsp/
    }

    // Login Form Submission (POST)
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model,
                                   @RequestParam String name,
                                   @RequestParam String password,
                                   @RequestParam String role) {

        // Debugging logs
        System.out.println("Login attempt for username: " + name + " with role: " + role);

        // Handle User Login
        if (role.equalsIgnoreCase("user")) {
            User user = service.findUserByUsername(name);  // Fetching user from the user repository
            if (user != null && service.validateUser(name, password)) {
                setSessionAttributes(model, user.getFirstName(), user.getMiddleName(), user.getLastName(), user.getAccountNumber());
                return "welcome-user"; // Redirect to user welcome page
            }
        }
        // Handle Banker Login
        else if (role.equalsIgnoreCase("banker")) {
            User banker = service.findUserByUsername(name);  // Adjusted for the banker repository (should be checked from banker repo)
            if (banker != null && service.validateBanker(name, password)) {
                setSessionAttributes(model, banker.getFirstName(), banker.getMiddleName(), banker.getLastName(), null);
                return "welcome-banker"; // Redirect to banker welcome page
            }
        }
        // Handle Admin Login
        else if (role.equalsIgnoreCase("admin")) {
            User admin = service.findUserByUsername(name);  // Adjusted for the admin repository (should be checked from admin repo)
            if (admin != null && service.validateAdmin(name, password)) {
                setSessionAttributes(model, admin.getFirstName(), admin.getMiddleName(), admin.getLastName(), null);
                return "welcome-admin"; // Redirect to admin welcome page
            }
        }

        // Invalid Login
        model.put("errorMessage", "Invalid Credentials or Role");
        return "login"; // Redirect back to login page on failure
    }

    // Sign-Up Page (GET)
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String viewSignUpPage() {
        return "signup"; // Ensure signup.jsp exists in WEB-INF/jsp/
    }

    // Sign-Up Form Submission (POST)
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String saveUser(@RequestParam String username,
                           @RequestParam String firstName,
                           @RequestParam(required = false) String middleName,
                           @RequestParam String lastName,
                           @RequestParam String email,
                           @RequestParam String phone,
                           @RequestParam String password,
                           ModelMap model) {
        try {
            // Create a new user and set all fields
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setFirstName(firstName);
            newUser.setMiddleName(middleName);
            newUser.setLastName(lastName);
            newUser.setEmail(email);
            newUser.setPhone(phone);
            newUser.setPassword(password); // For now, saving plain password

            // Register the user
            service.registerUser(newUser);

            model.put("successMessage", "User registered successfully! Please login.");
            return "login"; // Redirect to login page after successful registration
        } catch (IllegalArgumentException e) {
            // Handle error if username already exists
            model.put("errorMessage", e.getMessage());
            return "signup"; // Redirect back to sign-up page
        }
    }

    // Logout and Redirect to Home Page
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String handleLogout(ModelMap model) {
        model.clear(); // Clear the session attributes
        return "redirect:/"; // Redirect to the home page
    }

    // Helper Method: Set session attributes
    private void setSessionAttributes(ModelMap model, String firstName, String middleName, String lastName, String accountNumber) {
        String fullName = firstName + (middleName != null ? " " + middleName : "") + " " + lastName;
        model.put("name", fullName);
        model.put("accountNumber", accountNumber);
    }
}
