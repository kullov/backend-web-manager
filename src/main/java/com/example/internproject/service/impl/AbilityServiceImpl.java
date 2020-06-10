package com.example.internproject.service.impl;

import com.example.internproject.service.AbilityService;
import com.example.internproject.domain.Ability;
import com.example.internproject.repository.AbilityRepository;
import java.util.List;
import java.util.Optional;

/**
 * Service Implementation for managing {@link Ability}.
 */
@Service
@Transactional
public class AbilityServiceImpl implements AbilityService {

    private final Logger log = LoggerFactory.getLogger(AbilityServiceImpl.class);
    @Autowired
    private AbilityRepository abilityRepository;

    /**
     * Save a ability.
     *
     * @param ability the entity to save.
     * @return the persisted entity.
     */
    @Override
    public Ability save(Ability ability) {
        log.debug("Request to save Ability : {}", ability);
        return abilityRepository.save(ability);
    }

    /**
     * Get all the abilities.
     *
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public List<Ability> findAll() {
        log.debug("Request to get all Abilities");
        return abilityRepository.findAll();
    }

    /**
     * Get one ability by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<Ability> findOne(Long id) {
        log.debug("Request to get Ability : {}", id);
        return abilityRepository.findById(id);
    }

    /**
     * Delete the ability by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete Ability : {}", id);
        abilityRepository.deleteById(id);
    }
}
