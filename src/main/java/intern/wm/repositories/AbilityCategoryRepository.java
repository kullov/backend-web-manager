package intern.wm.repositories;

import intern.wm.domain.AbilityCategory;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

/**
 * Spring Data  repository for the AbilityCategory entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AbilityCategoryRepository extends JpaRepository<AbilityCategory, Long> {
}
