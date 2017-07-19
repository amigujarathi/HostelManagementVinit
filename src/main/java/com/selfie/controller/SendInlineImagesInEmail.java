package com.selfie.controller;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

public class SendInlineImagesInEmail {
	static byte [] btarr;
	static String senderMailAddress;
	static String senderMailPassword;
	static String senderPortNumber;
	static String senderHostName;
	
	  public static void getByteArray(String emailId,String link){
		 // btarr=btsarr;
		  SendInlineImagesInEmail p=new SendInlineImagesInEmail();
		  p.getPropertyFileValues();
		  String mail[]={emailId,link};
		  main(mail);
	   }
	   
	  public static void sendNotificationsToCustomers(String emailId,String link){
			 // btarr=btsarr;
			  SendInlineImagesInEmail p=new SendInlineImagesInEmail();
			  p.getPropertyFileValues();
			  String mail[]={emailId,link};
			  main(mail);
		   }
	  
   public static void main(String[] args) {
      // Recipient's email ID needs to be mentioned.
      String to = args[0];
      System.out.println("Sending mail to "+to);
      String from = senderMailAddress;
      final String username = senderMailAddress;//change accordingly
      final String password = senderMailPassword;//change accordingly

      String host =senderHostName;

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", senderPortNumber);
      Session session = Session.getInstance(props,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username, password);
            }
         });

      try {
    	  MimeMessage message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from, "FE Plus Card"));
         message.setRecipients(Message.RecipientType.TO,
            InternetAddress.parse(to));
         message.setSubject("Credit Card Reset Password","utf-8");
         MimeMultipart multipart = new MimeMultipart("related");
         BodyPart messageBodyPart = new MimeBodyPart();
         String htmlText = args[1];
         messageBodyPart.setContent(htmlText, "text/html;charset=UTF-8");
         multipart.addBodyPart(messageBodyPart);
         message.setContent(multipart,"UTF-8");
         Transport.send(message);
         System.out.println("Sent message successfully....");

      } catch (MessagingException e) {
    	  e.printStackTrace();
         throw new RuntimeException(e);
      }
      catch(Exception e){
    	  e.printStackTrace();
          throw new RuntimeException(e);
      }
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
			String user = prop.getProperty("user");
			
					
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
   
   
}