package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.entity.Emp;
import com.nit.repositatory.EmpRepositratory;

@Service
public class EmpService {
	@Autowired
	private EmpRepositratory empRepositratory;
	
	public List<Emp> getallEmp(){
		return empRepositratory.findAll();
	}
	
	public void deleteEmployee(int id) {
		empRepositratory.deleteById(id);
	}
	
	public void saveEmployee(Emp emp) {
		empRepositratory.save(emp);
	}
	public Emp getOne(int id) {
		return empRepositratory.findById(id).get();
	}
	public void updateEmployee(Emp emp) {
		empRepositratory.save(emp);
	}
	public List<Emp> searchbyname(String name){
		return empRepositratory.findByNameLike(name+"%");
	}
}
