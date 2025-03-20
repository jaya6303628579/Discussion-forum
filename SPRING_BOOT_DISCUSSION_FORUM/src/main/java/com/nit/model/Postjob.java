package com.nit.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Postjob {
	@Id
	private Integer id;
	private String companyName;
	private long mobileNo;
	private String address;
	private String jobLocation;
	private int Vacancy;
	private String jobTitle;
	private String skills;
	private String site;
	public Postjob(int id,String companyName, long mobileNo, String address, String jobLocation, int vacancy, String jobTitle,
			String skills, String site) {
		super();
		this.id=id;
		this.companyName = companyName;
		this.mobileNo = mobileNo;
		this.address = address;
		this.jobLocation = jobLocation;
		Vacancy = vacancy;
		this.jobTitle = jobTitle;
		this.skills = skills;
		this.site = site;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Postjob() {
		super();
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getJobLocation() {
		return jobLocation;
	}
	public void setJobLocation(String jobLocation) {
		this.jobLocation = jobLocation;
	}
	public int getVacancy() {
		return Vacancy;
	}
	public void setVacancy(int vacancy) {
		Vacancy = vacancy;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	@Override
	public String toString() {
		return "Postjob [companyName=" + companyName + ", mobileNo=" + mobileNo + ", address=" + address
				+ ", jobLocation=" + jobLocation + ", Vacancy=" + Vacancy + ", jobTitle=" + jobTitle + ", skills="
				+ skills + ", site=" + site + "]";
	}
	
}
