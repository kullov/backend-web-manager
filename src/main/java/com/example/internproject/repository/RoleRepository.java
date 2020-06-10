package com.example.internproject.repository;

import com.example.internproject.domain.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
  Role findByRoleName(String roleName);
}
