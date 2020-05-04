package com.example.internproject.service;

import com.example.internproject.domain.RequestAssignment;

import java.util.List;
import java.util.Optional;

/**
 * Service Interface for managing {@link RequestAssignment}.
 */
public interface RequestAssignmentService {

    /**
     * Save a requestAssignment.
     *
     * @param requestAssignment the entity to save.
     * @return the persisted entity.
     */
    RequestAssignment save(RequestAssignment requestAssignment);

    /**
     * Get all the requestAssignments.
     *
     * @return the list of entities.
     */
    List<RequestAssignment> findAll();

    /**
     * Get the "id" requestAssignment.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    Optional<RequestAssignment> findOne(Long id);

    /**
     * Delete the "id" requestAssignment.
     *
     * @param id the id of the entity.
     */
    void delete(Long id);
}
