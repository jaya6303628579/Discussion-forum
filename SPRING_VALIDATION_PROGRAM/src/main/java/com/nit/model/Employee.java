package com.nit.model;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;

public class Employee {

	private int id;
	@NotEmpty
	@Size(min=2,max=50)
	private String name;
	private double salary;
	@NotEmpty
	private String Address;
	public Employee() {
		super();
	}
	public Employee(int id, String name, double salary, String address) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
		Address = address;
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
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
}
