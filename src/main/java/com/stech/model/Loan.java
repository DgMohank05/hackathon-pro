package com.stech.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Loan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-generate loanId
    @Column(name = "loan_id")
    private int loanId;

    @Column(name = "account_number", nullable = false) // Ensure account number is mandatory
    private String accountNumber;

    @Column(name = "loan_type", nullable = false) // Added loan type
    private String loanType;

    @Column(name = "loan_amount", nullable = false)
    private double loanAmount;

    @Column(name = "interest_rate", nullable = false)
    private double interestRate;

    @Column(name = "emi_amount", nullable = false)
    private double emiAmount;

    @Column(name = "months_remaining", nullable = false)
    private int monthsRemaining;

    @Column(name = "principal_remaining", nullable = false)
    private double principalRemaining;

    @Column(name = "total_amount", nullable = false)
    private double totalAmount;

    @Column(name = "payment_status", nullable = false)
    private String paymentStatus;

    // Getters and Setters
    public int getLoanId() {
        return loanId;
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getLoanType() {
        return loanType;
    }

    public void setLoanType(String loanType) {
        this.loanType = loanType;
    }

    public double getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(double loanAmount) {
        this.loanAmount = loanAmount;
    }

    public double getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(double interestRate) {
        this.interestRate = interestRate;
    }

    public double getEmiAmount() {
        return emiAmount;
    }

    public void setEmiAmount(double emiAmount) {
        this.emiAmount = emiAmount;
    }

    public int getMonthsRemaining() {
        return monthsRemaining;
    }

    public void setMonthsRemaining(int monthsRemaining) {
        this.monthsRemaining = monthsRemaining;
    }

    public double getPrincipalRemaining() {
        return principalRemaining;
    }

    public void setPrincipalRemaining(double principalRemaining) {
        this.principalRemaining = principalRemaining;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
}
