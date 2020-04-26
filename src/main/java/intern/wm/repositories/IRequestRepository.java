package intern.wm.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import intern.wm.entities.Request;

@Repository	
public interface IRequestRepository extends JpaRepository<Request, Long> {
	public Page<Request> findAll(Pageable pageable);
	public Page<Request> findByPosition(String name, Pageable pageable);
	public Page<Request> findByDateCreated(Date date, Pageable pageable);
	
	public List<Request> findAllByPosition(String position);
	
	@Query("SELECT t FROM Request t WHERE " + "t.position LIKE %:position% AND " + "t.dateCreated LIKE :dateCreated AND " + "t.status LIKE :status AND " + "t.amount LIKE :amount")
    public Page<Request> findByAllParams(@Param("position") String position, @Param("dateCreated") Date dateCreated, @Param("status") String status, @Param("amount") int amount, Pageable pageable);

}
