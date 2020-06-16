package com.example.internproject.service.impl;

import com.example.internproject.domain.Request;
import com.example.internproject.repository.RequestRepository;
import com.example.internproject.service.RequestService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * Service Implementation for managing {@link Request}.
 */
@Service
@Transactional
public class RequestServiceImpl implements RequestService {

    private final Logger log = LoggerFactory.getLogger(RequestServiceImpl.class);
    @Autowired
    private RequestRepository requestRepository;

    /**
     * Save a request.
     *
     * @param request the entity to save.
     * @return the persisted entity.
     */
    @Override
    public Request save(Request request) {
        log.debug("Request to save Request : {}", request);
        return requestRepository.save(request);
    }

    /**
     * Get all the requests.
     *
     * @param pageable the pagination information.
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public Page<Request> findAll(Pageable pageable) {
        log.debug("Request to get all Requests");
        return requestRepository.findAll(pageable);
    }

    @Override
    public List<Request> findAll() {
        return requestRepository.findAll();
    }

    /**
     * Get all the requests with eager load of many-to-many relationships.
     *
     * @return the list of entities.
     */
    public Page<Request> findAllWithEagerRelationships(Pageable pageable) {
        return requestRepository.findAllWithEagerRelationships(pageable);
    }

    /**
     * Get one request by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<Request> findOne(Long id) {
        log.debug("Request to get Request : {}", id);
        return requestRepository.findOneWithEagerRelationships(id);
    }

    /**
     * Delete the request by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete Request : {}", id);
        requestRepository.deleteById(id);
    }

    @Override
    public List<Request> findAllByOrganizationId(Long id) {
        return requestRepository.findAllByOrganizationId(id);
    }

    @Override
    public List<Request> findAllByPosition(String position) {
        return requestRepository.findAllByPosition(position);
    }
}
