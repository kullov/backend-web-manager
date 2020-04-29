package intern.wm.rest;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import intern.wm.services.RegisterRequestService;
import intern.wm.services.dto.RegisterRequestDTO;

/**
 * REST controller for managing {@link intern.wm.domain.RegisterRequest}.
 */
@RestController
@RequestMapping("/api")
public class RegisterRequestResource {

    private final Logger log = LoggerFactory.getLogger(RegisterRequestResource.class);

    private static final String ENTITY_NAME = "registerRequest";

    @Value("${jhipster.clientApp.name}")
    private String applicationName;

    private final RegisterRequestService registerRequestService;

    public RegisterRequestResource(RegisterRequestService registerRequestService) {
        this.registerRequestService = registerRequestService;
    }

    /**
     * {@code POST  /register-requests} : Create a new registerRequest.
     *
     * @param registerRequestDTO the registerRequestDTO to create.
     * @return the {@link ResponseEntity} with status {@code 201 (Created)} and with body the new registerRequestDTO, or with status {@code 400 (Bad Request)} if the registerRequest has already an ID.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PostMapping("/register-requests")
    public ResponseEntity<RegisterRequestDTO> createRegisterRequest(@RequestBody RegisterRequestDTO registerRequestDTO) throws URISyntaxException {
        log.debug("REST request to save RegisterRequest : {}", registerRequestDTO);
        RegisterRequestDTO result = registerRequestService.save(registerRequestDTO);
        return ResponseEntity.created(new URI("/api/register-requests/" + result.getId()))
            .body(result);
    }

    /**
     * {@code PUT  /register-requests} : Updates an existing registerRequest.
     *
     * @param registerRequestDTO the registerRequestDTO to update.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the updated registerRequestDTO,
     * or with status {@code 400 (Bad Request)} if the registerRequestDTO is not valid,
     * or with status {@code 500 (Internal Server Error)} if the registerRequestDTO couldn't be updated.
     * @throws URISyntaxException if the Location URI syntax is incorrect.
     */
    @PutMapping("/register-requests")
    public ResponseEntity<RegisterRequestDTO> updateRegisterRequest(@RequestBody RegisterRequestDTO registerRequestDTO) throws URISyntaxException {
        log.debug("REST request to update RegisterRequest : {}", registerRequestDTO);
        RegisterRequestDTO result = registerRequestService.save(registerRequestDTO);
        return ResponseEntity.ok()
            .body(result);
    }

    /**
     * {@code GET  /register-requests} : get all the registerRequests.
     *
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and the list of registerRequests in body.
     */
    @GetMapping("/register-requests")
    public List<RegisterRequestDTO> getAllRegisterRequests() {
        log.debug("REST request to get all RegisterRequests");
        return registerRequestService.findAll();
    }

    /**
     * {@code GET  /register-requests/:id} : get the "id" registerRequest.
     *
     * @param id the id of the registerRequestDTO to retrieve.
     * @return the {@link ResponseEntity} with status {@code 200 (OK)} and with body the registerRequestDTO, or with status {@code 404 (Not Found)}.
     */
    @GetMapping("/register-requests/{id}")
    public ResponseEntity<RegisterRequestDTO> getRegisterRequest(@PathVariable Long id) {
        log.debug("REST request to get RegisterRequest : {}", id);
        Optional<RegisterRequestDTO> registerRequestDTO = registerRequestService.findOne(id);
        return ResponseEntity.of(registerRequestDTO);
    }

    /**
     * {@code DELETE  /register-requests/:id} : delete the "id" registerRequest.
     *
     * @param id the id of the registerRequestDTO to delete.
     * @return the {@link ResponseEntity} with status {@code 204 (NO_CONTENT)}.
     */
    @DeleteMapping("/register-requests/{id}")
    public ResponseEntity<Void> deleteRegisterRequest(@PathVariable Long id) {
        log.debug("REST request to delete RegisterRequest : {}", id);
        registerRequestService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
