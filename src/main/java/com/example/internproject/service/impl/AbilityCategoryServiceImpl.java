package com.example.internproject.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.internproject.domain.AbilityCategory;
import com.example.internproject.repository.AbilityCategoryRepository;
import com.example.internproject.service.AbilityCategoryService;

/**
 * Service Implementation for managing {@link AbilityCategory}.
 */
@Service
@Transactional
public class AbilityCategoryServiceImpl implements AbilityCategoryService {

    private final Logger log = LoggerFactory.getLogger(AbilityCategoryServiceImpl.class);

    @Autowired
    private AbilityCategoryRepository abilityCategoryRepository;

    /**
     * Save a abilityCategory.
     *
     * @param abilityCategory the entity to save.
     * @return the persisted entity.
     */
    @Override
    public AbilityCategory save(AbilityCategory abilityCategory) {
        log.debug("Request to save AbilityCategory : {}", abilityCategory);
        return abilityCategoryRepository.save(abilityCategory);
    }

    /**
     * Get all the abilityCategories.
     *
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public List<AbilityCategory> findAll() {
        log.debug("Request to get all AbilityCategories");
        return abilityCategoryRepository.findAll();
    }

    /**
     * Get one abilityCategory by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<AbilityCategory> findOne(Long id) {
        log.debug("Request to get AbilityCategory : {}", id);
        return abilityCategoryRepository.findById(id);
    }

    /**
     * Delete the abilityCategory by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete AbilityCategory : {}", id);
        abilityCategoryRepository.deleteById(id);
    }
}
