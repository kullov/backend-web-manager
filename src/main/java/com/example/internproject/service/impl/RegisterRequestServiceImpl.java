package com.example.internproject.service.impl;

import com.example.internproject.service.RegisterRequestService;
import com.example.internproject.domain.RegisterRequest;
import com.example.internproject.repository.RegisterRequestRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * Service Implementation for managing {@link RegisterRequest}.
 */
@Service
@Transactional
public class RegisterRequestServiceImpl implements RegisterRequestService {

    private final Logger log = LoggerFactory.getLogger(RegisterRequestServiceImpl.class);
    @Autowired
    private RegisterRequestRepository registerRequestRepository;

    /**
     * Save a registerRequest.
     *
     * @param registerRequest the entity to save.
     * @return the persisted entity.
     */
    @Override
    public RegisterRequest save(RegisterRequest registerRequest) {
        log.debug("Request to save RegisterRequest : {}", registerRequest);
        return registerRequestRepository.save(registerRequest);
    }

    /**
     * Get all the registerRequests.
     *
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public List<RegisterRequest> findAll() {
        log.debug("Request to get all RegisterRequests");
        return registerRequestRepository.findAll();
    }

    /**
     * Get one registerRequest by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<RegisterRequest> findOne(Long id) {
        log.debug("Request to get RegisterRequest : {}", id);
        return registerRequestRepository.findById(id);
    }

    /**
     * Delete the registerRequest by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete RegisterRequest : {}", id);
        registerRequestRepository.deleteById(id);
    }
}
