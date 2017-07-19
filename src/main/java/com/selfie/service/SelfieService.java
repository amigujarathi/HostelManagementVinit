package com.selfie.service;

import java.util.List;

import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;

public interface SelfieService {

	public void sendEmails(String sendTo,String subject,String message,String emailId);
	public void setStudentBillDetails(StudentBills bills);
	public void setStudentLeavesDetails(StudentLeaves leaves);
	public void setStudentLoginDetails(StudentLogin details);
	public StudentLogin getUserDetails(String emailId);
	public StudentBills getStudentBillsDetails(int rollNumber);
	public List<StudentBills> getAllStudentDetails();
	public StudentLeaves getStudentLeavesDetails(int rollNumber);
	public StudentLogin getStudentLoginDetails(int rollNumber);
	public void incrementNumberOfDayInMess(StudentBills bills);
	public StudentLogin getStudentLoginRollNumber(String emailid);
	public List<StudentLeaves> getAllLeavesDetails();
	public void setStudentLeavesDeails(int rollNumber,int status);
}

