package com.nit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nit.model.Emp;
@Component
public class EmpRowMapper implements RowMapper<Emp>{

	@Override
	public Emp mapRow(ResultSet rs, int rowNum) throws SQLException {
		Emp e=new Emp();
		e.setId(rs.getInt(1));
		e.setName(rs.getString(2));
		e.setRole(rs.getString(3));
		e.setSalary(rs.getDouble(4));
		e.setLocation(rs.getString(5));
		return e;
	}

}
