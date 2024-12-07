package com.stech.model;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Primary Key: Unique identifier for the user

    @Column(nullable = false, unique = true)
    private String username; // Unique username for login

    @Column(nullable = false)
    private String firstName; // User's first name

    private String middleName; // Optional middle name

    @Column(nullable = false)
    private String lastName; // User's last name

    @Column(nullable = false, unique = true)
    private String email; // Unique email for contact

    @Column(nullable = false, length = 10)
    private String phone; // 10-digit phone number

    @Column(nullable = false)
    private String password; // User's encrypted password

    @Column(name = "account_number")
    private String accountNumber; // Unique account number for loans

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }
}
