package com.nit.dao;

import java.util.List;

import com.nit.model.Employee;

public interface EmployeeDAO {
	void addEmployee(Employee emp);
	List<Employee> getAll();
}
