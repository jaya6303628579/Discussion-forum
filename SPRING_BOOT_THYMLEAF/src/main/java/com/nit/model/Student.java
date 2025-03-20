package com.nit.model;

public class Student {
	private int id;
	private String name;
	private String qualification;
	private String city;
	public Student(int id, String name, String qualification, String city) {
		super();
		this.id = id;
		this.name = name;
		this.qualification = qualification;
		this.city = city;
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
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
}
