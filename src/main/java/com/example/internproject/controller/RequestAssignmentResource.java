package com.example.internproject.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

import org.apache.tomcat.util.http.HeaderUtil;
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
import org.springframework.web.bind.annotation.RestController;

import com.example.internproject.domain.RequestAssignment;
import com.example.internproject.service.RequestAssignmentService;

/**
 * REST controller for managing {@link com.example.internproject.domain.RequestAssignment}.
 */
@RestController
@RequestMapping("/api")
public class RequestAssignmentResource {

    private final Logger log = LoggerFactory.getLogger(RequestAssignmentResource.class);

    private static final String ENTITY_NAME = "requestAssignment";

    @Autowired
    private RequestAssignmentService requestAssignmentService;


    /**
     * {@code POST  /request-assignments} : Create a new requestAssignment.
     *
     * @param requestAssignment the requestAssignment to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new requestAssignment, or with status {@code 400 (Bad Request)} if the requestAssignment has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/request-assignments")
    public ResponseEntity<RequestAssignment> createRequestAssignment(@RequestBody RequestAssignment requestAssignment) throws URISyntaxException {
        log.debug("REST request to save RequestAssignment : {}", requestAssignment);
        RequestAssignment result = requestAssignmentService.save(requestAssignment);
        return ResponseEntity.created(new URI("/api/request-assignments/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /request-assignments} : Updates an existing requestAssignment.
     *
     * @param requestAssignment the requestAssignment to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated requestAssignment,
     * or with status {@code 400 (Bad Request)} if the requestAssignment is not valid,
     * or with status {@code 500 (Internal Server Error)} if the requestAssignment couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/request-assignments")
    public ResponseEntity<RequestAssignment> updateRequestAssignment(@RequestBody RequestAssignment requestAssignment) throws URISyntaxException {
        log.debug("REST request to update RequestAssignment : {}", requestAssignment);
        RequestAssignment result = requestAssignmentService.save(requestAssignment);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /request-assignments} : get all the requestAssignments.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of requestAssignments in body.
     */
    @GetMapping("/request-assignments")
    public List<RequestAssignment> getAllRequestAssignments() {
        log.debug("REST request to get all RequestAssignments");
        return requestAssignmentService.findAll();
    }

    /**
     * {@code GET  /request-assignments/:id} : get the "id" requestAssignment.
     *
     * @param id the id of the requestAssignment to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the requestAssignment, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/request-assignments/{id}")
    public ResponseEntity<RequestAssignment> getRequestAssignment(@PathVariable Long id) {
        log.debug("REST request to get RequestAssignment : {}", id);
        Optional<RequestAssignment> requestAssignment = requestAssignmentService.findOne(id);
        return ResponseEntity.of(requestAssignment);
    }

    /**
     * {@code DELETE  /request-assignments/:id} : delete the "id" requestAssignment.
     *
     * @param id the id of the requestAssignment to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/request-assignments/{id}")
    public ResponseEntity<Void> deleteRequestAssignment(@PathVariable Long id) {
        log.debug("REST request to delete RequestAssignment : {}", id);
        requestAssignmentService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
