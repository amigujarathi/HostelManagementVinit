package com.selfie.dto;
// Generated Feb 10, 2017 12:58:55 AM by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * StudentLeaves generated by hbm2java
 */
public class StudentLeaves implements java.io.Serializable {

	private int rollNumber;
	private String studentName;
	private Date leaveDate;
	private String reason;
	private int status;
	
	private int typeOfLeave;
	private int leaveFor;
	private int numberOfDays;
	private Date startDate;
	
	public StudentLeaves() {
	}

	public StudentLeaves(int rollNumber) {
		this.rollNumber = rollNumber;
	}

	public StudentLeaves(int rollNumber, String studentName, Date leaveDate, String reason, Integer status) {
		this.rollNumber = rollNumber;
		this.studentName = studentName;
		this.leaveDate = leaveDate;
		this.reason = reason;
		this.status = status;
	}

	public int getRollNumber() {
		return this.rollNumber;
	}

	public void setRollNumber(int rollNumber) {
		this.rollNumber = rollNumber;
	}

	public String getStudentName() {
		return this.studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public Date getLeaveDate() {
		return this.leaveDate;
	}

	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public int getTypeOfLeave() {
		return typeOfLeave;
	}

	public void setTypeOfLeave(int typeOfLeave) {
		this.typeOfLeave = typeOfLeave;
	}

	public int getLeaveFor() {
		return leaveFor;
	}

	public void setLeaveFor(int leaveFor) {
		this.leaveFor = leaveFor;
	}

	public int getNumberOfDays() {
		return numberOfDays;
	}

	public void setNumberOfDays(int numberOfDays) {
		this.numberOfDays = numberOfDays;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	
	
}
