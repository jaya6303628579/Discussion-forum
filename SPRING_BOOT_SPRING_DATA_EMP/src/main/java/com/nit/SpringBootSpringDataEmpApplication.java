package com.nit;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.nit.entity.Emp;
import com.nit.represtory.EmpRepresitroy;

@SpringBootApplication
public class SpringBootSpringDataEmpApplication implements CommandLineRunner{

	public static void main(String[] args) {
		SpringApplication.run(SpringBootSpringDataEmpApplication.class, args);
	}
@Autowired
private EmpRepresitroy empRepresitroy;
	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		List<Emp> emps = empRepresitroy.findByName("MANOJ");
		emps.forEach(emp ->System.out.println(emp));
	}

}
