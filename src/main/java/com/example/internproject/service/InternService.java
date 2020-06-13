package com.example.internproject.service;

import com.example.internproject.domain.Intern;

import com.example.internproject.domain.RegisterRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

/**
 * Service Interface for managing {@link Intern}.
 */
public interface InternService {

    /**
     * Save a intern.
     *
     * @param intern the entity to save.
     * @return the persisted entity.
     */
    Intern save(Intern intern);

    /**
     * Get all the interns.
     *
     * @return the list of entities.
     */
    List<Intern> findAll();

    /**
     * Get all the interns with eager load of many-to-many relationships.
     *
     * @return the list of entities.
     */
    Page<Intern> findAllWithEagerRelationships(Pageable pageable);

    /**
     * Get the "id" intern.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    Optional<Intern> findOne(Long id);

    /**
     * Delete the "id" intern.
     *
     * @param id the id of the entity.
     */
    void delete(Long id);

    List<Intern> findAllByRegisterRequest(Long id);
}
