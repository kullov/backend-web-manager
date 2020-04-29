package intern.wm.rest;

import intern.wm.services.AbilityService;
import intern.wm.services.dto.AbilityDTO;

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
 * REST controller for managing {@link intern.wm.domain.Ability}.
 */
@RestController
@RequestMapping("/api")
public class AbilityResource {

    private final Logger log = LoggerFactory.getLogger(AbilityResource.class);

    private static final String ENTITY_NAME = "ability";

    @Value("${jhipster.clientApp.name}")
    private String applicationName;

    private final AbilityService abilityService;

    public AbilityResource(AbilityService abilityService) {
        this.abilityService = abilityService;
    }

    /**
     * {@code POST  /abilities} : Create a new ability.
     *
     * @param abilityDTO the abilityDTO to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new abilityDTO, or with status {@code 400 (Bad Request)} if the ability has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/abilities")
    public ResponseEntity<AbilityDTO> createAbility(@RequestBody AbilityDTO abilityDTO) throws URISyntaxException {
        log.debug("REST request to save Ability : {}", abilityDTO);
        AbilityDTO result = abilityService.save(abilityDTO);
        return ResponseEntity.created(new URI("/api/abilities/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /abilities} : Updates an existing ability.
     *
     * @param abilityDTO the abilityDTO to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated abilityDTO,
     * or with status {@code 400 (Bad Request)} if the abilityDTO is not valid,
     * or with status {@code 500 (Internal Server Error)} if the abilityDTO couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/abilities")
    public ResponseEntity<AbilityDTO> updateAbility(@RequestBody AbilityDTO abilityDTO) throws URISyntaxException {
        log.debug("REST request to update Ability : {}", abilityDTO);
        AbilityDTO result = abilityService.save(abilityDTO);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /abilities} : get all the abilities.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of abilities in body.
     */
    @GetMapping("/abilities")
    public List<AbilityDTO> getAllAbilities() {
        log.debug("REST request to get all Abilities");
        return abilityService.findAll();
    }

    /**
     * {@code GET  /abilities/:id} : get the "id" ability.
     *
     * @param id the id of the abilityDTO to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the abilityDTO, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/abilities/{id}")
    public ResponseEntity<AbilityDTO> getAbility(@PathVariable Long id) {
        log.debug("REST request to get Ability : {}", id);
        Optional<AbilityDTO> abilityDTO = abilityService.findOne(id);
        return ResponseEntity.of(abilityDTO);
    }

    /**
     * {@code DELETE  /abilities/:id} : delete the "id" ability.
     *
     * @param id the id of the abilityDTO to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/abilities/{id}")
    public ResponseEntity<Void> deleteAbility(@PathVariable Long id) {
        log.debug("REST request to delete Ability : {}", id);
        abilityService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
