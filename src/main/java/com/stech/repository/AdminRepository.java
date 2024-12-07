package com.stech.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stech.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByUsernameAndPassword(String username, String password);
}
