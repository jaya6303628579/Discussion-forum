package com.nit.represtory;

import org.springframework.data.jpa.repository.JpaRepository;
import com.nit.entity.Emp;
import java.util.List;

public interface EmpRepresitroy extends JpaRepository<Emp, Integer>{
	List<Emp> findByName(String name);
}
