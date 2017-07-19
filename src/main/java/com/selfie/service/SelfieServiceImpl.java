package com.selfie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.selfie.controller.SendInlineImagesInEmail;
import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;
import com.selfie.helper.SelfieHelperImpl;

public class SelfieServiceImpl implements SelfieService{

	
	@Autowired
	SelfieHelperImpl selfiehelper;

	public void sendEmails(String sendTo,String subject,String message,String email){
		//Sending Email Logic
		selfiehelper.sentmail(sendTo, subject,message,email);
	}

	
	
	


	@Override
	public StudentLogin getUserDetails(String emailId) {
		return selfiehelper.getUserDetails(emailId);
	}



	@Override
	public void setStudentBillDetails(StudentBills bills) {
		selfiehelper.setStudentBillDetails(bills);
	}



	@Override
	public void setStudentLeavesDetails(StudentLeaves leaves) {
		selfiehelper.setStudentLeavesDetails(leaves);
	}



	@Override
	public void setStudentLoginDetails(StudentLogin details) {
		selfiehelper.setStudentLoginDetails(details);
	}



	@Override
	public StudentBills getStudentBillsDetails(int rollNumber) {
		return selfiehelper.getStudentBillsDetails(rollNumber);
	}



	@Override
	public StudentLeaves getStudentLeavesDetails(int rollNumber) {
		return selfiehelper.getStudentLeavesDetails(rollNumber);
	}



	@Override
	public StudentLogin getStudentLoginDetails(int rollNumber) {
		return selfiehelper.getStudentLoginDetails(rollNumber);
	}






	@Override
	public List<StudentBills> getAllStudentDetails() {
		return selfiehelper.getAllStudentDetails();
	}






	@Override
	public void incrementNumberOfDayInMess(StudentBills bills) {
		selfiehelper.incrementNumberOfDayInMess(bills);
	}






	@Override
	public StudentLogin getStudentLoginRollNumber(String emailid) {
		StudentLogin login =selfiehelper.getStudentLoginRollNumber(emailid);
		return login;
	}
	
	@Override
	public List<StudentLeaves> getAllLeavesDetails(){
		return selfiehelper.getAllLeavesDetails();
	}
	
	public void setStudentLeavesDeails(int rollNumber,int status){
		selfiehelper.setStudentLeavesDeails(rollNumber,status);
	}
}
