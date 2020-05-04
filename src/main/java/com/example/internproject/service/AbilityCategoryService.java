package com.example.internproject.service;

import com.example.internproject.domain.AbilityCategory;

import java.util.List;
import java.util.Optional;

/**
 * Service Interface for managing {@link AbilityCategory}.
 */
public interface AbilityCategoryService {

    /**
     * Save a abilityCategory.
     *
     * @param abilityCategory the entity to save.
     * @return the persisted entity.
     */
    AbilityCategory save(AbilityCategory abilityCategory);

    /**
     * Get all the abilityCategories.
     *
     * @return the list of entities.
     */
    List<AbilityCategory> findAll();

    /**
     * Get the "id" abilityCategory.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    Optional<AbilityCategory> findOne(Long id);

    /**
     * Delete the "id" abilityCategory.
     *
     * @param id the id of the entity.
     */
    void delete(Long id);
}
