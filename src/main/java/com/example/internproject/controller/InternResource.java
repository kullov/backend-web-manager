package com.example.internproject.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

import io.github.jhipster.web.util.HeaderUtil;
import io.github.jhipster.web.util.ResponseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.internproject.domain.Intern;
import com.example.internproject.service.InternService;

/**
 * REST controller for managing {@link com.example.internproject.domain.Intern}.
 */
@RestController
@RequestMapping("/api")
public class InternResource {

    private final Logger log = LoggerFactory.getLogger(InternResource.class);

    private static final String ENTITY_NAME = "intern";

    private String applicationName = "InternProject";

    @Autowired
    private InternService internService;

    /**
     * {@code POST  /interns} : Create a new intern.
     *
     * @param intern the intern to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new intern, or with status {@code 400 (Bad Request)} if the intern has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/interns")
    public ResponseEntity<Intern> createIntern(@RequestBody Intern intern) throws URISyntaxException {
        log.debug("REST request to save Intern : {}", intern);
        Intern result = internService.save(intern);
        return ResponseEntity.created(new URI("/api/interns/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert(applicationName, false, ENTITY_NAME, result.getId().toString()))
            .body(result);
    }

    /**
     * {@code PUT  /interns} : Updates an existing intern.
     *
     * @param intern the intern to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated intern,
     * or with status {@code 400 (Bad Request)} if the intern is not valid,
     * or with status {@code 500 (Internal Server Error)} if the intern couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/interns")
    public ResponseEntity<Intern> updateIntern(@RequestBody Intern intern) throws URISyntaxException {
        log.debug("REST request to update Intern : {}", intern);
        Intern result = internService.save(intern);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert(applicationName, false, ENTITY_NAME, intern.getId().toString()))
            .body(result);
    }

    /**
     * {@code GET  /interns} : get all the interns.
     *
     * @param eagerload flag to eager load entities from relationships (This is applicable for many-to-many).
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of interns in body.
     */
    @GetMapping("/interns")
    public List<Intern> getAllInterns(@RequestParam(required = false, defaultValue = "false") boolean eagerload) {
        log.debug("REST request to get all Interns");
        return internService.findAll();
    }

    /**
     * {@code GET  /interns/:id} : get the "id" intern.
     *
     * @param id the id of the intern to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the intern, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/interns/{id}")
    public ResponseEntity<Intern> getIntern(@PathVariable Long id) {
        log.debug("REST request to get Intern : {}", id);
        Optional<Intern> intern = internService.findOne(id);
        return ResponseUtil.wrapOrNotFound(intern);
    }

    /**
     * {@code DELETE  /interns/:id} : delete the "id" intern.
     *
     * @param id the id of the intern to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/interns/{id}")
    public ResponseEntity<Void> deleteIntern(@PathVariable Long id) {
        log.debug("REST request to delete Intern : {}", id);
        internService.delete(id);
        return ResponseEntity.noContent().headers(HeaderUtil.createEntityDeletionAlert(applicationName, false, ENTITY_NAME, id.toString())).build();
    }
}
