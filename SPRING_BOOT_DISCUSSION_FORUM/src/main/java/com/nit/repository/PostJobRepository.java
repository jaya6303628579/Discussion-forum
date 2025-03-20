package com.nit.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nit.model.Postjob;
import com.nit.model.Student;

public interface PostJobRepository extends JpaRepository<Postjob, Integer>{
	@Query("SELECT s FROM Postjob s WHERE s.skills IN (SELECT s2.skill FROM Student s2)")
    List<Postjob> findCommonStudents();
}
