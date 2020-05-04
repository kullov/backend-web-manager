package com.example.internproject.service;

import com.example.internproject.domain.RegisterRequest;

import java.util.List;
import java.util.Optional;

/**
 * Service Interface for managing {@link RegisterRequest}.
 */
public interface RegisterRequestService {

    /**
     * Save a registerRequest.
     *
     * @param registerRequest the entity to save.
     * @return the persisted entity.
     */
    RegisterRequest save(RegisterRequest registerRequest);

    /**
     * Get all the registerRequests.
     *
     * @return the list of entities.
     */
    List<RegisterRequest> findAll();

    /**
     * Get the "id" registerRequest.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    Optional<RegisterRequest> findOne(Long id);

    /**
     * Delete the "id" registerRequest.
     *
     * @param id the id of the entity.
     */
    void delete(Long id);
}
