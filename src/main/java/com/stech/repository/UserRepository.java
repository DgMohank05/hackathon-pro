package com.stech.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stech.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    // Custom query methods
    User findByUsernameAndPassword(String username, String password);
    User findByUsername(String username);
}
