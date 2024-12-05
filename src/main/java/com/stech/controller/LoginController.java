package com.stech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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
    public String showWelcomePage(ModelMap model, 
                                   @RequestParam String name, 
                                   @RequestParam String password, 
                                   @RequestParam String role) {
        boolean isValidUser = false;

        // Check the role and validate accordingly
        switch (role.toLowerCase()) {
            case "user":
                isValidUser = service.validateUser(name, password);
                if (isValidUser) {
                    model.put("name", name);
                    return "welcome-user"; // User welcome page (e.g., welcome-user.jsp)
                }
                break;
            case "banker":
                isValidUser = service.validateBanker(name, password);
                if (isValidUser) {
                    model.put("name", name);
                    return "welcome-banker"; // Banker welcome page (e.g., welcome-banker.jsp)
                }
                break;
            case "admin":
                isValidUser = service.validateAdmin(name, password);
                if (isValidUser) {
                    model.put("name", name);
                    return "welcome-admin"; // Admin welcome page (e.g., welcome-admin.jsp)
                }
                break;
            default:
                model.put("errorMessage", "Invalid role selected.");
                return "login";
        }

        // If no valid user found
        model.put("errorMessage", "Access Denied, Invalid Credentials");
        return "login";
    }

    // Sign-Up Page (GET)
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String viewSignUpPage() {
        return "signup"; // Ensure signup.jsp exists in WEB-INF/jsp/
    }

    // Logout and Redirect to Home Page
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String handleLogout(ModelMap model) {
        model.clear(); // Clear the session attributes
        return "redirect:/"; // Redirect to the home page
    }
}
