package com.nit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nit.model.Alumini;

public interface AluminiRepository extends JpaRepository<Alumini, Integer> {
	Alumini findByUsernameAndPassword(String username, String password);
}
