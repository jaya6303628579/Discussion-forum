package com.nit.dao;

import java.util.List;

import com.nit.model.Emp;

public interface empdao {
	List<Emp> getAllemployees();
	void insertemp(Emp e);
	Emp GETONEEMPLOYEE(int id);
	void updateemp(Emp e);
	void deleteemp(int id);
}
