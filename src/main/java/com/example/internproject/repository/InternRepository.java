package com.example.internproject.repository;

import com.example.internproject.domain.Intern;

import com.example.internproject.domain.RegisterRequest;
import java.util.List;
import java.util.Optional;

/**
 * Spring Data  repository for the Intern entity.
 */
@Repository
public interface InternRepository extends JpaRepository<Intern, Long> {

    @Query(value = "select distinct intern from Intern intern left join fetch intern.internAbilities",
        countQuery = "select count(distinct intern) from Intern intern")
    Page<Intern> findAllWithEagerRelationships(Pageable pageable);

    @Query("select distinct intern from Intern intern left join fetch intern.internAbilities")
    List<Intern> findAllWithEagerRelationships();

    @Query("select intern from Intern intern left join fetch intern.internAbilities where intern.id =:id")
    Optional<Intern> findOneWithEagerRelationships(@Param("id") Long id);

    @Query("select intern from Intern intern where intern.code =:code")
    Intern findByCode(@Param("code") int code);

    @Query("select intern from Intern intern left join fetch intern.registerRequests")
    List<Intern> findAllByRegisterRequest(@Param("id") Long id);


}
