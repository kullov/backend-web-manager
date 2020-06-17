package com.example.internproject.repository;

import com.example.internproject.domain.AbilityCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
/**
 * Spring Data  repository for the AbilityCategory entity.
 */
@SuppressWarnings("unused")
@Repository
public interface AbilityCategoryRepository extends JpaRepository<AbilityCategory, Long> {
}
