package com.nit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nit.model.Questions;

public interface QuestionRepository extends JpaRepository<Questions, Integer>{

}
