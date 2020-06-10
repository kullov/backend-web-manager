package com.example.internproject.repository;

import com.example.internproject.domain.Ability;

/**
 * Spring Data  repository for the Ability entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AbilityRepository extends JpaRepository<Ability, Long> {
}
