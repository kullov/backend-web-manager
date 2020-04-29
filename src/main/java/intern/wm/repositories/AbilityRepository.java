package intern.wm.repositories;

import intern.wm.domain.Ability;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

/**
 * Spring Data  repository for the Ability entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AbilityRepository extends JpaRepository<Ability, Long> {
}
