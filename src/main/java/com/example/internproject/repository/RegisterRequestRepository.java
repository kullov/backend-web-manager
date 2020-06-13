package com.example.internproject.repository;

import com.example.internproject.domain.RegisterRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * Spring Data  repository for the RegisterRequest entity.
 */
@SuppressWarnings("unused")
@Repository
public interface RegisterRequestRepository extends JpaRepository<RegisterRequest, Long> {

  @Query("select rq from RegisterRequest rq left join fetch rq.requestRegister where rq.internRegister =:id")
  List<RegisterRequest> findAllByInternId(Long id);

}
