package com.selfie.dto;
// Generated Feb 10, 2017 12:58:55 AM by Hibernate Tools 3.4.0.CR1

/**
 * StudentLogin generated by hbm2java
 */
public class StudentLogin implements java.io.Serializable {

	private Integer rollNumber;
	private String adharcardNumber;
	private String studentName;
	private String password;
	private String mobileNumber;
	private String emailId;
	private String parentMobile;
	private String address;

	public StudentLogin() {
	}

	public StudentLogin(String adharcardNumber) {
		this.adharcardNumber = adharcardNumber;
	}

	public StudentLogin(String adharcardNumber, String studentName, String password, String mobileNumber,
			String emailId, String parentMobile, String address) {
		this.adharcardNumber = adharcardNumber;
		this.studentName = studentName;
		this.password = password;
		this.mobileNumber = mobileNumber;
		this.emailId = emailId;
		this.parentMobile = parentMobile;
		this.address = address;
	}

	public Integer getRollNumber() {
		return this.rollNumber;
	}

	public void setRollNumber(Integer rollNumber) {
		this.rollNumber = rollNumber;
	}

	public String getAdharcardNumber() {
		return this.adharcardNumber;
	}

	public void setAdharcardNumber(String adharcardNumber) {
		this.adharcardNumber = adharcardNumber;
	}

	public String getStudentName() {
		return this.studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobileNumber() {
		return this.mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return this.emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getParentMobile() {
		return this.parentMobile;
	}

	public void setParentMobile(String parentMobile) {
		this.parentMobile = parentMobile;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
