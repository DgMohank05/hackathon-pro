package com.stech.repository;

import com.stech.Loan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoanRepository extends JpaRepository<Loan, Integer> {

    Loan findByAccountNumber(String accountNumber); // To find loan by account number
}
