package com.example.internproject.service.impl;

import com.example.internproject.domain.Intern;
import com.example.internproject.repository.InternRepository;
import com.example.internproject.service.InternService;
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
 * Service Implementation for managing {@link Intern}.
 */
@Service
@Transactional
public class InternServiceImpl implements InternService {

    private final Logger log = LoggerFactory.getLogger(InternServiceImpl.class);
    @Autowired
    private InternRepository internRepository;

    /**
     * Save a intern.
     *
     * @param intern the entity to save.
     * @return the persisted entity.
     */
    @Override
    public Intern save(Intern intern) {
        log.debug("Request to save Intern : {}", intern);
        return internRepository.save(intern);
    }

    /**
     * Get all the interns.
     *
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public List<Intern> findAll() {
        log.debug("Request to get all Interns");
        return internRepository.findAllWithEagerRelationships();
    }


    /**
     * Get all the interns with eager load of many-to-many relationships.
     *
     * @return the list of entities.
     */
    @Override
    public Page<Intern> findAllWithEagerRelationships(Pageable pageable) {
        return internRepository.findAllWithEagerRelationships(pageable);
    }

    /**
     * Get one intern by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<Intern> findOne(Long id) {
        log.debug("Request to get Intern : {}", id);
        return internRepository.findOneWithEagerRelationships(id);
    }

    /**
     * Delete the intern by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete Intern : {}", id);
        internRepository.deleteById(id);
    }

    @Override
    public List<Intern> findAllByRegisterRequest(Long id) {
        return internRepository.findAllByRegisterRequest(id);
    }

}
