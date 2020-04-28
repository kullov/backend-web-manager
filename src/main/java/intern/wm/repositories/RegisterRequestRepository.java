package intern.wm.repositories;

import intern.wm.domain.RegisterRequest;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

/**
 * Spring Data  repository for the RegisterRequest entity.
 */
@SuppressWarnings("unused")
@Repository
public interface RegisterRequestRepository extends JpaRepository<RegisterRequest, Long> {
}
