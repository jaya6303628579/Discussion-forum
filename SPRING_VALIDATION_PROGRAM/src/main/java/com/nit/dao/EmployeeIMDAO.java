package com.nit.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.nit.model.Employee;

public class EmployeeIMDAO extends JdbcDaoSupport implements EmployeeDAO{
	private RowMapper<Employee> rowMapper;
	private String add="insert into employee values(?,?,?,?)";
	private String getAll="select * from employee";

	public RowMapper<Employee> getRowMapper() {
		return rowMapper;
	}

	public void setRowMapper(RowMapper<Employee> rowMapper) {
		this.rowMapper = rowMapper;
	}

	@Override
	public void addEmployee(Employee emp) {
		getJdbcTemplate().update(add, emp.getId(), emp.getName(), emp.getSalary(), emp.getAddress());
		
	}

	@Override
	public List<Employee> getAll() {
		
		return getJdbcTemplate().query(getAll, rowMapper);
	}

}
