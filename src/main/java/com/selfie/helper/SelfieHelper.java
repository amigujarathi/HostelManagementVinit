package com.selfie.helper;

import java.util.List;

import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;

public interface SelfieHelper {

	 public String sentmail(String sentto,String subject,String body,String email);
	 
	 public void setStudentBillDetails(StudentBills bills);
		public void setStudentLeavesDetails(StudentLeaves leaves);
		public void setStudentLoginDetails(StudentLogin details);
		
		public StudentBills getStudentBillsDetails(int rollNumber);
		public StudentLeaves getStudentLeavesDetails(int rollNumber);
		public StudentLogin getStudentLoginDetails(int rollNumber);
		public List<StudentBills> getAllStudentDetails();
		
		public StudentLogin getUserDetails(String emailId);
		public void incrementNumberOfDayInMess(StudentBills bills);
		public StudentLogin getStudentLoginRollNumber(String emailid);
		
		public List<StudentLeaves> getAllLeavesDetails();
		public void setStudentLeavesDeails(int rollNumber,int status);
}
