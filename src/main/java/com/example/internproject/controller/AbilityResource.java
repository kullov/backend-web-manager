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

import com.example.internproject.domain.Ability;
import com.example.internproject.service.AbilityService;

/**
 * REST controller for managing {@link com.example.internproject.domain.Ability}.
 */
@RestController
@RequestMapping("/api")
public class AbilityResource {

    private final Logger log = LoggerFactory.getLogger(AbilityResource.class);

    private static final String ENTITY_NAME = "ability";

    @Autowired
    private AbilityService abilityService;

    /**
     * {@code POST  /abilities} : Create a new ability.
     *
     * @param ability the ability to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new ability, or with status {@code 400 (Bad Request)} if the ability has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/abilities")
    public ResponseEntity<Ability> createAbility(@RequestBody Ability ability) throws URISyntaxException {
        log.debug("REST request to save Ability : {}", ability);
        Ability result = abilityService.save(ability);
        return ResponseEntity.created(new URI("/api/abilities/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /abilities} : Updates an existing ability.
     *
     * @param ability the ability to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated ability,
     * or with status {@code 400 (Bad Request)} if the ability is not valid,
     * or with status {@code 500 (Internal Server Error)} if the ability couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/abilities")
    public ResponseEntity<Ability> updateAbility(@RequestBody Ability ability) throws URISyntaxException {
        log.debug("REST request to update Ability : {}", ability);
        Ability result = abilityService.save(ability);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /abilities} : get all the abilities.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of abilities in body.
     */
    @GetMapping("/abilities")
    public List<Ability> getAllAbilities() {
        log.debug("REST request to get all Abilities");
        return abilityService.findAll();
    }

    /**
     * {@code GET  /abilities/:id} : get the "id" ability.
     *
     * @param id the id of the ability to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the ability, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/abilities/{id}")
    public ResponseEntity<Ability> getAbility(@PathVariable Long id) {
        log.debug("REST request to get Ability : {}", id);
        Optional<Ability> ability = abilityService.findOne(id);
        return ResponseEntity.of(ability);
    }

    /**
     * {@code DELETE  /abilities/:id} : delete the "id" ability.
     *
     * @param id the id of the ability to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/abilities/{id}")
    public ResponseEntity<Void> deleteAbility(@PathVariable Long id) {
        log.debug("REST request to delete Ability : {}", id);
        abilityService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
