package com.example.internproject.service;

import com.example.internproject.domain.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
  /**
   * Save a status.
   *
   * @param user the entity to save.
   * @return the persisted entity.
   */
  User save(User user);

  /**
   * Get all the statuses.
   *
   * @return the list of entities.
   */
  List<User> findAll();

  /**
   * Get the "id" status.
   *
   * @param id the id of the entity.
   * @return the entity.
   */
  Optional<User> findOne(Long id);

  /**
   * Delete the "id" status.
   *
   * @param id the id of the entity.
   */
  void delete(Long id);
}
