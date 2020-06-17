package com.example.internproject.repository;

import com.example.internproject.domain.Organization;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
/**
 * Spring Data  repository for the Organization entity.
 */
@SuppressWarnings("unused")
@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Long> {

  @Query("select o from Organization o where o.taxNumber =:taxNumber")
  Organization findByTaxNumber(@Param("taxNumber") String taxNumber);
}
