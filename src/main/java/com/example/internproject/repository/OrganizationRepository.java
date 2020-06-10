package com.example.internproject.repository;

import com.example.internproject.domain.Intern;
import com.example.internproject.domain.Organization;

/**
 * Spring Data  repository for the Organization entity.
 */
@SuppressWarnings("unused")
@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Long> {

  @Query("select o from Organization o where o.taxNumber =:taxNumber")
  Organization findByTaxNumber(@Param("taxNumber") String taxNumber);
}
