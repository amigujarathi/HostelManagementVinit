package com.selfie.dao;

import java.util.List;

import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;

public interface SelfieDao {

public StudentLogin getUserDetails(String emailId);
	
	public void setStudentBillDetails(StudentBills bills);
	public void setStudentLeavesDetails(StudentLeaves leaves);
	public void setStudentLoginDetails(StudentLogin details);
	public List<StudentBills> getAllStudentDetails();
	public StudentBills getStudentBillsDetails(int rollNumber);
	public StudentLeaves getStudentLeavesDetails(int rollNumber);
	public StudentLogin getStudentLoginDetails(int rollNumber);
	public void incrementNumberOfDayInMess(StudentBills bills);
	public StudentLogin getStudentLoginRollNumber(String emailid);
	public List<StudentLeaves> getAllLeavesDetails();
	public void setStudentLeavesDeails(int rollNumber,int status);
}
