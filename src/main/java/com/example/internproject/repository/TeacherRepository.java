package com.example.internproject.repository;

import com.example.internproject.domain.Intern;
import com.example.internproject.domain.Teacher;

/**
 * Spring Data  repository for the Teacher entity.
 */
@SuppressWarnings("unused")
@Repository
public interface TeacherRepository extends JpaRepository<Teacher, Long> {

  @Query("select t from Teacher t where t.code =:code")
  Teacher findByCode(@Param("code") String code);
}
