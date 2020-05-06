package com.example.internproject.service.impl;

import com.example.internproject.service.RequestAssignmentService;
import com.example.internproject.domain.RequestAssignment;
import com.example.internproject.repository.RequestAssignmentRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * Service Implementation for managing {@link RequestAssignment}.
 */
@Service
@Transactional
public class RequestAssignmentServiceImpl implements RequestAssignmentService {

    private final Logger log = LoggerFactory.getLogger(RequestAssignmentServiceImpl.class);
    @Autowired
    private RequestAssignmentRepository requestAssignmentRepository;

    /**
     * Save a requestAssignment.
     *
     * @param requestAssignment the entity to save.
     * @return the persisted entity.
     */
    @Override
    public RequestAssignment save(RequestAssignment requestAssignment) {
        log.debug("Request to save RequestAssignment : {}", requestAssignment);
        return requestAssignmentRepository.save(requestAssignment);
    }

    /**
     * Get all the requestAssignments.
     *
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public List<RequestAssignment> findAll() {
        log.debug("Request to get all RequestAssignments");
        return requestAssignmentRepository.findAll();
    }

    /**
     * Get one requestAssignment by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<RequestAssignment> findOne(Long id) {
        log.debug("Request to get RequestAssignment : {}", id);
        return requestAssignmentRepository.findById(id);
    }

    /**
     * Delete the requestAssignment by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete RequestAssignment : {}", id);
        requestAssignmentRepository.deleteById(id);
    }
}
