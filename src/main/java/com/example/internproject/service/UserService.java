package com.example.internproject.service;

import com.example.internproject.domain.User;
import org.springframework.data.domain.Page;

import java.util.List;

public interface UserService {

    Page<User> getAllUsers(int page, int limit);

    User findByUsername(String username);

    User findByUserId(final long userId);

    boolean addUser(User account, String role);

    void updateUser(User user);

    void deleteUser(long id);

    boolean checkLogin(User user);

    List<User> findAll();
}