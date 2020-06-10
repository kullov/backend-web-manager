package com.example.internproject.repository;

import com.example.internproject.domain.AbilityCategory;

/**
 * Spring Data  repository for the AbilityCategory entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AbilityCategoryRepository extends JpaRepository<AbilityCategory, Long> {
}
