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

import com.example.internproject.domain.RegisterRequest;
import com.example.internproject.service.RegisterRequestService;

/**
 * REST controller for managing {@link com.example.internproject.domain.RegisterRequest}.
 */
@RestController
@RequestMapping("/api")
public class RegisterRequestResource {

    private final Logger log = LoggerFactory.getLogger(RegisterRequestResource.class);

    private static final String ENTITY_NAME = "registerRequest";

    @Autowired
    private RegisterRequestService registerRequestService;

    /**
     * {@code POST  /register-requests} : Create a new registerRequest.
     *
     * @param registerRequest the registerRequest to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new registerRequest, or with status {@code 400 (Bad Request)} if the registerRequest has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/register-requests")
    public ResponseEntity<RegisterRequest> createRegisterRequest(@RequestBody RegisterRequest registerRequest) throws URISyntaxException {
        log.debug("REST request to save RegisterRequest : {}", registerRequest);
        RegisterRequest result = registerRequestService.save(registerRequest);
        return ResponseEntity.created(new URI("/api/register-requests/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /register-requests} : Updates an existing registerRequest.
     *
     * @param registerRequest the registerRequest to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated registerRequest,
     * or with status {@code 400 (Bad Request)} if the registerRequest is not valid,
     * or with status {@code 500 (Internal Server Error)} if the registerRequest couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/register-requests")
    public ResponseEntity<RegisterRequest> updateRegisterRequest(@RequestBody RegisterRequest registerRequest) throws URISyntaxException {
        log.debug("REST request to update RegisterRequest : {}", registerRequest);
        RegisterRequest result = registerRequestService.save(registerRequest);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /register-requests} : get all the registerRequests.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of registerRequests in body.
     */
    @GetMapping("/register-requests")
    public List<RegisterRequest> getAllRegisterRequests() {
        log.debug("REST request to get all RegisterRequests");
        return registerRequestService.findAll();
    }

    /**
     * {@code GET  /register-requests/:id} : get the "id" registerRequest.
     *
     * @param id the id of the registerRequest to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the registerRequest, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/register-requests/{id}")
    public ResponseEntity<RegisterRequest> getRegisterRequest(@PathVariable Long id) {
        log.debug("REST request to get RegisterRequest : {}", id);
        Optional<RegisterRequest> registerRequest = registerRequestService.findOne(id);
        return ResponseEntity.of(registerRequest);
    }

    /**
     * {@code DELETE  /register-requests/:id} : delete the "id" registerRequest.
     *
     * @param id the id of the registerRequest to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/register-requests/{id}")
    public ResponseEntity<Void> deleteRegisterRequest(@PathVariable Long id) {
        log.debug("REST request to delete RegisterRequest : {}", id);
        registerRequestService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
