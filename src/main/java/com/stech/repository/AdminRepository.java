package com.stech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.stech.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByUsernameAndPassword(String username, String password);
}
