package com.nit.model;
public class Emp {
private int id;
private String name;
private String role;
private Double salary;
private String location;

public Emp(int id, String name, String role, Double salary, String location) {
	super();
	this.id = id;
	this.name = name;
	this.role = role;
	this.salary = salary;
	this.location = location;
}

public Emp() {
	super();
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public Double getSalary() {
	return salary;
}
public void setSalary(Double salary) {
	this.salary = salary;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
} 

}
