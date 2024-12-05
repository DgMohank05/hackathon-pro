package com.stech.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.stech.Banker;

public interface BankerRepository extends JpaRepository<Banker, Long> {
    Banker findByUsernameAndPassword(String username, String password);
}
