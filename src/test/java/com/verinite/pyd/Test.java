package com.verinite.pyd;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class Test {

    private static final DateFormat sdf = new SimpleDateFormat("YYYY-MM-dd'T'HH:mm:ss");
 
    public static void main(String[] args) {

        Date date = new Date();
        System.out.println(sdf.format(date));
        System.out.println(Test.validateName("Kính gửi Ông"));
        System.out.println("*******"+Test.validateNumeric("183478931487"));
        System.out.println(Test.validateEmailAddress("vineetjamgaonkar9@gmail.com"));
      
    }
    public static boolean validateName(String txt) {

		String regx = "^[\\p{L} .'-]+$";
	    Pattern pattern = Pattern.compile(regx,Pattern.CASE_INSENSITIVE);
	    Matcher matcher = pattern.matcher(txt);
	    return matcher.find();

	}
	
    public static boolean validateNumeric(String str)
    {
    	//System.out.println(str.length());
    	if(str.length()>20){
    		return false;
    	}
      return str.matches("\\d+(\\d+)?");  //match a number with optional '-' and decimal.
    }
    
    public static boolean validateAlphaNumeric(String s){
        String pattern= "^[a-zA-Z0-9]*$";
        return s.matches(pattern);
    }
    
    public static boolean validateEmailAddress(String email) {
    	if(email.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"+"[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")){
    		return true;
    	}
    	else{
    		return false;
    	}
    	
    }
    
}