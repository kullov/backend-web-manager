package com.example.internproject.repository;

import com.example.internproject.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

}