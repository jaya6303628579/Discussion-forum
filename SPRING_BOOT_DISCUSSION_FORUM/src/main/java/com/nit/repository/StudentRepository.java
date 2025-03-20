package com.nit.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.nit.model.Alumini;
import com.nit.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{
	Student findByUsername(String username);
	
	 @Query("SELECT s FROM Student s WHERE s.skill IN (SELECT s2.skills FROM Postjob s2)")
	    List<Student> findCommonStudents();
	 Student findByUsernameAndPassword(String username, String password);
	 List<Student> findByYop(long yop);
	 
}
