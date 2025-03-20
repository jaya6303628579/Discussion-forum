package com.nit.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	private long sRoll;
	private String sName;
	private String cName;
	private long yop;
	private long mobileNo;
	private String mailId;
	private String username;
	private String password;
	private String skill;
	private String language;
	public Student(long sRoll, String sName, String cName, long yop, long mobileNo, String mailId, String username,
			String password, String skill, String language) {
		super();
		this.sRoll = sRoll;
		this.sName = sName;
		this.cName = cName;
		this.yop = yop;
		this.mobileNo = mobileNo;
		this.mailId = mailId;
		this.username = username;
		this.password = password;
		this.skill = skill;
		this.language = language;
	}
	public Student() {
		super();
	}
	public long getsRoll() {
		return sRoll;
	}
	public void setsRoll(long sRoll) {
		this.sRoll = sRoll;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public long getYop() {
		return yop;
	}
	public void setYop(long yop) {
		this.yop = yop;
	}
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
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
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	@Override
	public String toString() {
		return "Student [sRoll=" + sRoll + ", sName=" + sName + ", cName=" + cName + ", yop=" + yop + ", mobileNo="
				+ mobileNo + ", mailId=" + mailId + ", username=" + username + ", password=" + password + ", skill="
				+ skill + ", language=" + language + "]";
	}
	
}
