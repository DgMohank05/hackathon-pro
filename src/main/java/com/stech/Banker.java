package com.stech;

import jakarta.persistence.*;

@Entity
@Table(name = "bankers")
public class Banker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false)
    private String password;

    // Getters and Setters
}
