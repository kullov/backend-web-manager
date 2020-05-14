package com.example.internproject.service.impl;

import com.example.internproject.domain.User;
import com.example.internproject.repository.UserRepository;
import com.example.internproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

  @Autowired
  private UserRepository userRepository;

  @Override
  public User save(User user) {
    return null;
  }

  @Override
  public List<User> findAll() {
    return null;
  }

  @Override
  public Optional<User> findOne(Long id) {
    return Optional.empty();
  }

  @Override
  public void delete(Long id) {

  }
}
