package com.stech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stech.model.Loan;

@Repository
public interface LoanRepository extends JpaRepository<Loan, Integer> {

    Loan findByAccountNumber(String accountNumber); // To find loan by account number
}
