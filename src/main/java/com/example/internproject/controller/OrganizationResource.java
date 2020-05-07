package com.example.internproject.controller;

import com.example.internproject.domain.Organization;
import com.example.internproject.service.OrganizationService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

/**
 * REST controller for managing {@link com.example.internproject.domain.Organization}.
 */
@RestController
@RequestMapping("/api")
public class OrganizationResource {

    private final Logger log = LoggerFactory.getLogger(OrganizationResource.class);

    private static final String ENTITY_NAME = "organization";


    private final OrganizationService organizationService;

    public OrganizationResource(OrganizationService organizationService) {
        this.organizationService = organizationService;
    }

    /**
     * {@code POST  /organizations} : Create a new organization.
     *
     * @param organization the organization to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new organization, or with status {@code 400 (Bad Request)} if the organization has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/organizations")
    public ResponseEntity<Organization> createOrganization(@RequestBody Organization organization) throws URISyntaxException {
        log.debug("REST request to save Organization : {}", organization);
        Organization result = organizationService.save(organization);
        return ResponseEntity.created(new URI("/api/organizations/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /organizations} : Updates an existing organization.
     *
     * @param organization the organization to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated organization,
     * or with status {@code 400 (Bad Request)} if the organization is not valid,
     * or with status {@code 500 (Internal Server Error)} if the organization couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/organizations")
    public ResponseEntity<Organization> updateOrganization(@RequestBody Organization organization) throws URISyntaxException {
        log.debug("REST request to update Organization : {}", organization);
        Organization result = organizationService.save(organization);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /organizations} : get all the organizations.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of organizations in body.
     */
    @GetMapping("/organizations")
    public List<Organization> getAllOrganizations() {
        log.debug("REST request to get all Organizations");
        return organizationService.findAll();
    }

    /**
     * {@code GET  /organizations/:id} : get the "id" organization.
     *
     * @param id the id of the organization to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the organization, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/organizations/{id}")
    public ResponseEntity<Organization> getOrganization(@PathVariable Long id) {
        log.debug("REST request to get Organization : {}", id);
        Optional<Organization> organization = organizationService.findOne(id);
        return ResponseEntity.of(organization);
    }

    /**
     * {@code DELETE  /organizations/:id} : delete the "id" organization.
     *
     * @param id the id of the organization to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/organizations/{id}")
    public ResponseEntity<Void> deleteOrganization(@PathVariable Long id) {
        log.debug("REST request to delete Organization : {}", id);
        organizationService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
