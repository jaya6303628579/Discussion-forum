package com.nit.constant;

public class Constant {
	public static final String Get_All="select * from emp";
	public static final String INSERT="insert into emp values(?,?,?,?,?)";
	public static final String GET_ONE="select *from emp where id=?";
	public static final String UPDATE="update emp set name=?, role=?, salary=?, location=? where id=?";
	public static final String DELETE="delete from emp where id=?";
}

