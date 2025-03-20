package com.nit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.nit.model.Emp;
import com.nit.constant.Constant;
@Component
public class empdaoImpl implements empdao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private EmpRowMapper rowMapper;
	@Override
	public List<Emp> getAllemployees() {
		
		return jdbcTemplate.query(Constant.Get_All, rowMapper);
	}
	@Override
	@Transactional(rollbackForClassName = {"java.lang.Exception"})
	public void insertemp(Emp e) {
		// TODO Auto-generated method stub
		jdbcTemplate.update(Constant.INSERT,e.getId(),e.getName(),e.getRole(),e.getSalary(),e.getLocation());
		
	}
	public Emp GETONEEMPLOYEE(int id) {
		
		return jdbcTemplate.query(Constant.GET_ONE,rowMapper,id).get(0);
	}
	@Override
	public void updateemp(Emp e) {
		jdbcTemplate.update(Constant.UPDATE,e.getName(),e.getRole(),e.getSalary(),e.getLocation(),e.getId());
		
	}
	@Override
	public void deleteemp(int id) {
		jdbcTemplate.update(Constant.DELETE,id);
		
	}

}
