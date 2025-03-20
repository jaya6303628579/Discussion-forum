package com.nit.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Alumini {
@Id
private Long regNo;
private String companyName;
private String bussinessType;
private String aluminiName;
private String gender;
private int age;
private String gmail;
private String skills;
private long mobileno;
private String address;
private String username;
private String password;

public Alumini(Long regNo, String companyName, String bussinessType, String aluminiName, String gender, int age,
		String gmail, String skills, long mobileno, String address, String username, String password) {
	super();
	this.regNo = regNo;
	this.companyName = companyName;
	this.bussinessType = bussinessType;
	this.aluminiName = aluminiName;
	this.gender = gender;
	this.age = age;
	this.gmail = gmail;
	this.skills = skills;
	this.mobileno = mobileno;
	this.address = address;
	this.username = username;
	this.password = password;
}
public Alumini() {
	super();
}
public Long getRegNo() {
	return regNo;
}
public void setRegNo(Long regNo) {
	this.regNo = regNo;
}
public String getCompanyName() {
	return companyName;
}
public void setCompanyName(String companyName) {
	this.companyName = companyName;
}
public String getBussinessType() {
	return bussinessType;
}
public void setBussinessType(String bussinessType) {
	this.bussinessType = bussinessType;
}
public String getAluminiName() {
	return aluminiName;
}
public void setAluminiName(String aluminiName) {
	this.aluminiName = aluminiName;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getGmail() {
	return gmail;
}
public void setGmail(String gmail) {
	this.gmail = gmail;
}
public String getSkills() {
	return skills;
}
public void setSkills(String skills) {
	this.skills = skills;
}
public long getMobileno() {
	return mobileno;
}
public void setMobileno(long mobileno) {
	this.mobileno = mobileno;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}

public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Alumini [regNo=" + regNo + ", companyName=" + companyName + ", bussinessType=" + bussinessType
			+ ", aluminiName=" + aluminiName + ", gender=" + gender + ", age=" + age + ", gmail=" + gmail + ", skills="
			+ skills + ", mobileno=" + mobileno + ", address=" + address + ", username=" + username + ", password="
			+ password + "]";
}

}
