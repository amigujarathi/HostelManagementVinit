package com.checkuser;
import java.text.ParseException;
import java.text.SimpleDateFormat ;
import java.util.GregorianCalendar;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

public class TestCustomer {

	public static void main(String[] args) throws DatatypeConfigurationException, ParseException {
 
		CMSSelfieCheckHttpService csch= new CMSSelfieCheckHttpService();
		CMSSelfieCheck check=csch.getCMSSelfieCheckHttpPort();
		
		CustInfoType custInfo=new CustInfoType();
		
		custInfo.setCustomerID("111");
		custInfo.setNationalID("023308115");
		custInfo.setMobile("0908268022");
		custInfo.setTypeOfCard("New");
		
		 
		SysRequestType sys=new SysRequestType();
		sys.setTransID(java.util.UUID.randomUUID().toString()); 
		sys.setRequestorID("CMS_SELFIE");
		System.out.println("sys");

		String format = "yyyy-MM-dd'T'HH:mm:ss";	 
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(new SimpleDateFormat(format).parse("2016-12-06T13:19:08"));
		XMLGregorianCalendar calendar = DatatypeFactory.newInstance().newXMLGregorianCalendar( cal);
		
		System.out.println(" before calendar"+calendar.toString().subSequence(0,19));

		sys.setDateTime(calendar);
		System.out.println(" after calendar set");

		SysResponseType res=check.checkCust(sys, custInfo);
		System.out.println(res.getDescription());



		/*Date dob=null;
		DateFormat df=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		dob=df.parse( "2014-02-10 11:15:00" );

 		GregorianCalendar cal = new GregorianCalendar();

		cal.setTime(dob);
		XMLGregorianCalendar xmlDate2 = DatatypeFactory.newInstance().newXMLGregorianCalendar(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH), dob.getHours(),dob.getMinutes(),dob.getSeconds(),DatatypeConstants.FIELD_UNDEFINED, cal.getTimeZone().LONG).normalize();
		XMLGregorianCalendar xmlDate3 = DatatypeFactory.newInstance().newXMLGregorianCalendar(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH),dob.getHours(),dob.getMinutes(),dob.getSeconds(),DatatypeConstants.FIELD_UNDEFINED, DatatypeConstants.FIELD_UNDEFINED);
		System.out.println(xmlDate2);
		System.out.println(xmlDate3);
		
		
		
  		sys.setDateTime(xmlDate3);*/
		

	}

}
