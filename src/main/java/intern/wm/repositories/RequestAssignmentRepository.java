package intern.wm.repositories;

import intern.wm.domain.RequestAssignment;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

/**
 * Spring Data  repository for the RequestAssignment entity.
 */
@SuppressWarnings("unused")
@Repository
public interface RequestAssignmentRepository extends JpaRepository<RequestAssignment, Long> {
}
