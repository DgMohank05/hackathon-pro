package com.stech.repository;

import com.stech.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    // Custom query methods
    User findByUsernameAndPassword(String username, String password);
    User findByUsername(String username);
}
