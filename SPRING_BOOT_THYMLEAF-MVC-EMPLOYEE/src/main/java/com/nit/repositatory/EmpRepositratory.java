package com.nit.repositatory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nit.entity.Emp;

public interface EmpRepositratory extends JpaRepository<Emp, Integer>{
	List<Emp> findByNameLike(String name);
}
