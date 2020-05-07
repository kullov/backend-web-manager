package com.example.internproject.service;

import com.example.internproject.domain.Ability;

import java.util.List;
import java.util.Optional;

/**
 * Service Interface for managing {@link Ability}.
 */
public interface AbilityService {

    /**
     * Save a ability.
     *
     * @param ability the entity to save.
     * @return the persisted entity.
     */
    Ability save(Ability ability);

    /**
     * Get all the abilities.
     *
     * @return the list of entities.
     */
    List<Ability> findAll();

    /**
     * Get the "id" ability.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    Optional<Ability> findOne(Long id);

    /**
     * Delete the "id" ability.
     *
     * @param id the id of the entity.
     */
    void delete(Long id);
}
