package com.example.internproject.repository;

import com.example.internproject.domain.RegisterRequest;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

/**
 * Spring Data  repository for the RegisterRequest entity.
 */
@SuppressWarnings("unused")
@Repository
public interface RegisterRequestRepository extends JpaRepository<RegisterRequest, Long> {
}
