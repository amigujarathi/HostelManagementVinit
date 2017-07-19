package com.selfie.helper;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;

import com.selfie.dao.SelfieDaoImpl;
import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;

public class SelfieHelperImpl implements SelfieHelper{

	@Autowired
	SelfieDaoImpl selfiedao;
	
	static String senderMailAddress;
	static String senderMailPassword;
	static String senderPortNumber;
	static String senderHostName;
	
	
	@Override
	 public String sentmail(String sentto,String subject,String body,String email){
		 	getPropertyFileValues();
	        // Recipient's email ID needs to be mentioned.
	        String to = sentto;

	        // Sender's email ID needs to be mentioned
	        String from = senderMailAddress;
	        final String username = senderMailAddress;//change accordingly
	        final String password = senderMailPassword;//change accordingly

	        // Assuming you are sending email through relay.jangosmtp.net
	        String host = "smtp.gmail.com";

	        Properties props = new Properties();
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.host", senderHostName);
	        props.put("mail.smtp.port", senderPortNumber);

	        // Get the Session object.
	        Session session = Session.getInstance(props,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(username, password);
	                    }
	                });

	        try {
	            // Create a default MimeMessage object.
	            Message message = new MimeMessage(session);

	            // Set From: header field of the header.
	            message.setFrom(new InternetAddress(from,"Hostel Management"));

	            // Set To: header field of the header.
	            message.setRecipients(Message.RecipientType.TO,
	                    InternetAddress.parse(to));

	            // Set Subject: header field
	            message.setSubject(subject);

	            // Now set the actual message
	            message.setText(body+"   Sender Id "+email);

	            // Send message
	            Transport.send(message);

	            System.out.println("Sent message successfully....");

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }catch(Exception e){
	        	
	        }
	        return "The message is sent successfully";
	    }
	 
	 
	@Override
	public StudentLogin getUserDetails(String emailId) {
		return selfiedao.getUserDetails(emailId);
	}

	@Override
	public void setStudentBillDetails(StudentBills bills) {
		selfiedao.setStudentBillDetails(bills);
	}

	@Override
	public void setStudentLeavesDetails(StudentLeaves leaves) {
		selfiedao.setStudentLeavesDetails(leaves);
	}

	@Override
	public void setStudentLoginDetails(StudentLogin details) {
		selfiedao.setStudentLoginDetails(details);
	}

	@Override
	public StudentBills getStudentBillsDetails(int rollNumber) {
		return selfiedao.getStudentBillsDetails(rollNumber);
	}

	@Override
	public StudentLeaves getStudentLeavesDetails(int rollNumber) {
		return selfiedao.getStudentLeavesDetails(rollNumber);
	}

	@Override
	public StudentLogin getStudentLoginDetails(int rollNumber) {
		return selfiedao.getStudentLoginDetails(rollNumber);
	}

	
	
	
	   public void getPropertyFileValues(){
		   InputStream inputStream;
		   try {
				Properties prop = new Properties();
				String propFileName = "project.properties";

				 inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);

				if (inputStream != null) {
					prop.load(inputStream);
				} else {
					throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
				}

				Date time = new Date(System.currentTimeMillis());

				// get the property value and print it out
				
				
						
				String mailSenderName = prop.getProperty("mail.username");
				String senderPassword = prop.getProperty("mail.password");
				String mailPort = prop.getProperty("mail.port");
				String mailHost = prop.getProperty("mail.host");
						
				senderMailAddress=mailSenderName;
				senderMailPassword=senderPassword;
				senderPortNumber=mailPort;
				senderHostName=mailHost;
				
			} catch (Exception e) {
				System.out.println("Exception: " + e);
			} 
	   }


	@Override
	public List<StudentBills> getAllStudentDetails() {
		// TODO Auto-generated method stub
		List<StudentBills> data=selfiedao.getAllStudentDetails();
		return data;
	}


	@Override
	public void incrementNumberOfDayInMess(StudentBills bills) {
		selfiedao.incrementNumberOfDayInMess(bills);
	}


	@Override
	public StudentLogin getStudentLoginRollNumber(String emailid) {
		return selfiedao.getStudentLoginRollNumber(emailid);
	}


	@Override
	public List<StudentLeaves> getAllLeavesDetails() {
		return selfiedao.getAllLeavesDetails();
	}


	@Override
	public void setStudentLeavesDeails(int rollNumber,int status) {
		selfiedao.setStudentLeavesDeails(rollNumber,status);
	}
	 
}
