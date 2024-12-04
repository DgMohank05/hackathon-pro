package com.stech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.stech.User;
import com.stech.service.LoginService;

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
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {
        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.put("errorMessage", "Access Denied, Invalid Credentials");
            return "login";
        }

        model.put("name", name);
        return "welcome"; // Ensure welcome.jsp exists in WEB-INF/jsp/
    }

    // Sign-Up Page (GET)
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String viewSignUpPage() {
        return "signup"; // Ensure signup.jsp exists in WEB-INF/jsp/
    }

    // Sign-Up Form Submission (POST)
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String handleSignUp(@RequestParam String username,
                               @RequestParam String firstName,
                               @RequestParam(required = false) String middleName,
                               @RequestParam String lastName,
                               @RequestParam String email,
                               @RequestParam String phone,
                               @RequestParam String password,
                               ModelMap model) {
        // Create a User object and save it to the database
        User newUser = new User();
        newUser.setUsername(username);
        newUser.setFirstName(firstName);
        newUser.setMiddleName(middleName);
        newUser.setLastName(lastName);
        newUser.setEmail(email);
        newUser.setPhone(phone);
        newUser.setPassword(password);

        service.registerUser(newUser); // Add this method in LoginService to save the user

        model.put("successMessage", "Sign up successful! Please log in.");
        return "login"; // Redirect to login.jsp
    }

    // Logout and Redirect to Home Page
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String handleLogout(ModelMap model) {
        model.clear(); // Clear the session attributes
        return "redirect:/"; // Redirect to the home page
    }
}
