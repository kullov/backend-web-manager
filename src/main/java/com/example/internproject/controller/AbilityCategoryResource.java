package com.example.internproject.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

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

import com.example.internproject.domain.AbilityCategory;
import com.example.internproject.service.AbilityCategoryService;

/**
 * REST controller for managing {@link com.example.internproject.domain.AbilityCategory}.
 */
@RestController
@RequestMapping("/api")
public class AbilityCategoryResource {

    private final Logger log = LoggerFactory.getLogger(AbilityCategoryResource.class);

    private static final String ENTITY_NAME = "abilityCategory";

    @Autowired
    private AbilityCategoryService abilityCategoryService;

    /**
     * {@code POST  /ability-categories} : Create a new abilityCategory.
     *
     * @param abilityCategory the abilityCategory to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new abilityCategory, or with status {@code 400 (Bad Request)} if the abilityCategory has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/ability-categories")
    public ResponseEntity<AbilityCategory> createAbilityCategory(@RequestBody AbilityCategory abilityCategory) throws URISyntaxException {
        log.debug("REST request to save AbilityCategory : {}", abilityCategory);
        AbilityCategory result = abilityCategoryService.save(abilityCategory);
        return ResponseEntity.created(new URI("/api/ability-categories/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /ability-categories} : Updates an existing abilityCategory.
     *
     * @param abilityCategory the abilityCategory to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated abilityCategory,
     * or with status {@code 400 (Bad Request)} if the abilityCategory is not valid,
     * or with status {@code 500 (Internal Server Error)} if the abilityCategory couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/ability-categories")
    public ResponseEntity<AbilityCategory> updateAbilityCategory(@RequestBody AbilityCategory abilityCategory) throws URISyntaxException {
        log.debug("REST request to update AbilityCategory : {}", abilityCategory);
        AbilityCategory result = abilityCategoryService.save(abilityCategory);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /ability-categories} : get all the abilityCategories.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of abilityCategories in body.
     */
    @GetMapping("/ability-categories")
    public List<AbilityCategory> getAllAbilityCategories() {
        log.debug("REST request to get all AbilityCategories");
        return abilityCategoryService.findAll();
    }

    /**
     * {@code GET  /ability-categories/:id} : get the "id" abilityCategory.
     *
     * @param id the id of the abilityCategory to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the abilityCategory, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/ability-categories/{id}")
    public ResponseEntity<AbilityCategory> getAbilityCategory(@PathVariable Long id) {
        log.debug("REST request to get AbilityCategory : {}", id);
        Optional<AbilityCategory> abilityCategory = abilityCategoryService.findOne(id);
        return ResponseEntity.of(abilityCategory);
    }

    /**
     * {@code DELETE  /ability-categories/:id} : delete the "id" abilityCategory.
     *
     * @param id the id of the abilityCategory to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/ability-categories/{id}")
    public ResponseEntity<Void> deleteAbilityCategory(@PathVariable Long id) {
        log.debug("REST request to delete AbilityCategory : {}", id);
        abilityCategoryService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
