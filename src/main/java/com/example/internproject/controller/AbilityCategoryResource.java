package com.example.internproject.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

import com.example.internproject.controller.errors.BadRequestAlertException;
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

    private String applicationName = "InternProject";

    private final AbilityCategoryService abilityCategoryService;

    public AbilityCategoryResource(AbilityCategoryService abilityCategoryService) {
        this.abilityCategoryService = abilityCategoryService;
    }

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
        if (abilityCategory.getId() != null) {
            throw new BadRequestAlertException("A new abilityCategory cannot already have an ID", ENTITY_NAME, "idexists");
        }
        AbilityCategory result = abilityCategoryService.save(abilityCategory);
        return ResponseEntity.created(new URI("/api/ability-categories/" + result.getId()))
                .headers(HeaderUtil.createEntityCreationAlert(applicationName, false, ENTITY_NAME, result.getId().toString()))
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
        if (abilityCategory.getId() == null) {
            throw new BadRequestAlertException("Invalid id", ENTITY_NAME, "idnull");
        }
        AbilityCategory result = abilityCategoryService.save(abilityCategory);
        return ResponseEntity.ok()
                .headers(HeaderUtil.createEntityUpdateAlert(applicationName, false, ENTITY_NAME, abilityCategory.getId().toString()))
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
        return ResponseUtil.wrapOrNotFound(abilityCategory);
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
        return ResponseEntity.noContent().headers(HeaderUtil.createEntityDeletionAlert(applicationName, false, ENTITY_NAME, id.toString())).build();
    }
}
