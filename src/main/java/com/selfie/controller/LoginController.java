package com.selfie.controller;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.Provider.Service;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.datatype.DatatypeConfigurationException;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;
import com.selfie.service.SelfieServiceImpl;


@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	boolean authFlag = false;
	boolean authFlag2=false;
	boolean authFlag3=false;
	boolean resetPassword=false;
	boolean authFlag4=false;
	boolean authFlag5=false;
	boolean authFlag6=false;
	boolean authFlag7=false;
	boolean isImageSave = false;
	boolean errorFlag=false;
	boolean errorFlagImg=false;
	boolean readCsvFlag=false;
	boolean errorWhileReading=false;
	int lineNumber=0;
	boolean errorAtLine=false;
	public static boolean changeuserstatus=false;
	String rectorEmailId;
	String messEmailId;
	String otherEmailId1;
	int foodPricePerDay;
	String rent;
	
	@Autowired
	SelfieServiceImpl selfieservice;
	
	
	@RequestMapping("loginform")
	public String showForm(Model model) {
		System.out.println("============================");
		model.addAttribute("loginForm", new SelfieDomain());
		if (authFlag) {
			model.addAttribute("message", "Please Enter Valid username and password");
		}
		authFlag = false;
		
		if (authFlag3) {
			model.addAttribute("message", "Username is invalid please enter valid username");
		}
		authFlag3 = false;
		
		
		return "login";
	}
	
	@RequestMapping("logindetails")
	public String doLogin(HttpServletRequest request, Model model, @RequestParam("emailId") String username,@RequestParam("password") String password) throws ParseException, DatatypeConfigurationException {
		try{
		System.out.println("login details");	
		System.out.println("Username " + username);
		System.out.println("password " + password);
		HttpSession session = request.getSession();
		session.setAttribute("fullName", username);
		//StudentLogin stLogin=selfieservice.getUserDetails(username);
		if(("mess".equals(username)) && ("admin".equals(password))){
			//Successful Login
			return "redirect:mess";
		}else if(("rector".equals(username)) && ("admin".equals(password))){
		
			return "redirect:NewFinal";
		}else{
			//Unsuccessful Login
			authFlag=true;
			return "redirect:loginform";
		}
		
		}catch(Exception e){
			authFlag3=true;
			return "redirect:loginform";
		}
		
	}
	
	
	

	@RequestMapping("forgotpassword")
	public String showFormPassword(Model model) {
		System.out.println("============================");
		model.addAttribute("forgotPassword", new SelfieDomain());
		return "forgotpassword";
	}
	

	@RequestMapping("index")
	public String showFormIndex(Model model) {
		System.out.println("============================");
		model.addAttribute("index", new SelfieDomain());
		return "index";
	}
	
	
	@RequestMapping("complaintDetails")
	public String saveComplain(HttpServletRequest request, Model model, @RequestParam("complainToName") String complainToName,@RequestParam("name") String name, @RequestParam("subject") String subject,@RequestParam("message") String message) throws ParseException, DatatypeConfigurationException {
		System.out.println("complainToName " + complainToName);
		System.out.println("Name " + name);
		System.out.println("Subject " + subject);
		System.out.println("Message " + message);
		getPropertyFileValues();
		//Save Complain and Send Email to Customer.
		
		if(complainToName.equals(1+"")){
			System.out.println("Sending Mail To Mess Id");
			selfieservice.sendEmails(messEmailId, subject,message,name);
		}else if(complainToName.equals(2+"")){
			System.out.println("Sending Mail To Rector Id");
			selfieservice.sendEmails(rectorEmailId, subject,message,name);
		}else if(complainToName.equals(3+"")){
			System.out.println("Sending Mail To Other Mail Id");
			selfieservice.sendEmails(otherEmailId1, subject,message,name);
		}else{
			model.addAttribute("errfn","Please Enter 1-3 in Complain to Page");
		}
		
		
		HttpSession session = request.getSession();
		authFlag=true;
		return "redirect:index";
		
	}
	
	@RequestMapping("admin")
	public String showAdminForm(Model model) {
		System.out.println("============================");
		model.addAttribute("admin", new SelfieDomain());
		return "admin";
	}
	
	@RequestMapping("registration")
	public String showFormRegistration(Model model) {
		System.out.println("============================");
		model.addAttribute("register", new SelfieDomain());
		if(authFlag){
			model.addAttribute("message","Registration Successfull");
		}
		authFlag=false;
		return "registration";
	}
	
	
	@RequestMapping("registrationdetails")
	public String doChangePassword(HttpServletRequest request, Model model, @RequestParam("studentName") String studentName,@RequestParam("emailId") String emailId,@RequestParam("mobileNumber") String mobileNumber,@RequestParam("parentMobile") String parentMobile,@RequestParam("type") String password,@RequestParam("address") String address) throws ParseException, DatatypeConfigurationException {
		System.out.println("email Id " + emailId);
		System.out.println("student Name " + studentName);
		System.out.println("mobileNumber " + mobileNumber);
		System.out.println("parent Mobile " + parentMobile);
		System.out.println("address" + address);
		System.out.println("Password "+password);
		getPropertyFileValues();
		StudentLogin details=new StudentLogin();
		details.setEmailId(emailId);
		details.setStudentName(studentName);
		details.setMobileNumber(mobileNumber);
		details.setParentMobile(parentMobile);
		details.setAddress(address);
		details.setPassword(password);
		selfieservice.setStudentLoginDetails(details);
		
		StudentLogin login=selfieservice.getStudentLoginRollNumber(emailId);
		System.out.println("Roll Number Of Student "+login.getRollNumber());
		StudentBills bills=new StudentBills();
		bills.setRollNumber(login.getRollNumber());
		bills.setRoomRent(rent);
		bills.setStatus(1);
		bills.setStudentName(studentName);
		bills.setTotalDaysMess("0");
		bills.setTotal(rent);
		selfieservice.setStudentBillDetails(bills);
		authFlag=true;
		return "redirect:registration";
	}
	
	
	@RequestMapping("loginStudent")
	public String showFormLoginStudent(Model model) {
		System.out.println("============================");
		model.addAttribute("loginStudent", new SelfieDomain());
		return "loginStudent";
	}
	
	

	@RequestMapping("studentLogindetails")
	public String studentdoLogin(HttpServletRequest request, Model model, @RequestParam("emailId") String username,@RequestParam("password") String password) throws ParseException, DatatypeConfigurationException {
		try{
		System.out.println("Username " + username);
		System.out.println("password " + password);
		HttpSession session = request.getSession();
		session.setAttribute("emailId", username);
		StudentLogin stLogin=selfieservice.getUserDetails(username);
		if(stLogin.getEmailId().equals(username) && stLogin.getPassword().equals(password)){
			//Successful Login
			session.setAttribute("rollNumber", stLogin.getRollNumber());
			return "redirect:Overview";
		}else{
			//Unsuccessful Login
			authFlag=true;
			return "redirect:loginform";
		}
		
		}catch(Exception e){
			authFlag3=true;
			return "redirect:loginform";
		}
		
	}
	
	
	@RequestMapping("Overview")
	public String showFormOverview(Model model) {
		System.out.println("============================");
		model.addAttribute("forgotPassword", new SelfieDomain());
		return "Overview";
	}
	
	
	
	@RequestMapping("Role")
	public String showFormRole(Model model) {
		System.out.println("============================"+"Role");
		model.addAttribute("role", new SelfieDomain());
		return "Role";
	}
	
	@RequestMapping("bom")
	public String showFormMessManagement(Model model,HttpServletRequest request) {
		System.out.println("============================");
		model.addAttribute("bom", new SelfieDomain());
		HttpSession session = request.getSession();
		String emailIdTemp=(String) session.getAttribute("emailId");
		StudentLogin login=selfieservice.getStudentLoginRollNumber(emailIdTemp);
		System.out.println("Roll Number Of Student "+login.getRollNumber());
		StudentBills bill=selfieservice.getStudentBillsDetails(login.getRollNumber());
		model.addAttribute("amount", bill.getTotal());
		return "bom";
	}
	
	@RequestMapping("savingPaymentDetails")
	public String showFormsavingPaymentDetails(Model model,HttpServletRequest request) {
		System.out.println("============================");
		model.addAttribute("bom", new SelfieDomain());
		HttpSession session = request.getSession();
		String emailIdTemp=(String) session.getAttribute("emailId");
		StudentLogin login=selfieservice.getStudentLoginRollNumber(emailIdTemp);
		System.out.println("Roll Number Of Student "+login.getRollNumber());
		StudentBills temp=new StudentBills();
		temp.setRollNumber(login.getRollNumber());
		temp.setRoomRent("0");
		temp.setTotalDaysMess("0");
		temp.setTotal("0");
		temp.setStudentName(login.getStudentName());
		temp.setStatus(1);
		selfieservice.setStudentBillDetails(temp);
		StudentBills bill=selfieservice.getStudentBillsDetails(login.getRollNumber());
		model.addAttribute("amount", bill.getTotal());
		return "redirect:bom";
	}
	
	
	
	@RequestMapping("LeaveApplication")
	public String showFormLeaveApplication(Model model) {
		System.out.println("============================");
		model.addAttribute("leaveApplication", new SelfieDomain());
		return "LeaveApplication";
	}
	
	@RequestMapping("saveleaveApplication")
	public String saveApplicationLeave(Model model,HttpServletRequest request,@RequestParam("typeOfLeave") String typeOfLeave,@RequestParam("leaveFrom") String leaveFrom,@RequestParam("emailId") String emailId,@RequestParam("numberOfDays") String numberOfDays,@RequestParam("startDate") String startDate,@RequestParam("endDate") String endDate,@RequestParam("reasonForLeave") String reasonForLeave){
		
		System.out.println("typeOfLeave "+typeOfLeave);
		System.out.println("leaveFrom "+leaveFrom);
		System.out.println("emailId "+emailId);
		System.out.println("numberOfDays "+numberOfDays);
		System.out.println("startDate "+startDate);
		System.out.println("endDate "+endDate);
		System.out.println("reasonForLeave "+reasonForLeave);
		StudentLeaves leaves=new StudentLeaves();
		HttpSession session=request.getSession();
		Integer rollnumber=Integer.parseInt(session.getAttribute("rollNumber")+"");
		leaves.setRollNumber(rollnumber);
		leaves.setStatus(0);
		leaves.setNumberOfDays(Integer.parseInt(numberOfDays));
		leaves.setReason(reasonForLeave);
		Date d=new Date(startDate);
		leaves.setStartDate(d);
		Date d3=new Date(endDate);
		leaves.setLeaveDate(d3);
		leaves.setStudentName(emailId);
		
		if(typeOfLeave.equalsIgnoreCase("Half Day")){
			leaves.setLeaveFor(1);
		}else if(typeOfLeave.equalsIgnoreCase("Full Day")){
			leaves.setLeaveFor(2);
		}else{
			leaves.setLeaveFor(3);
		}
		
		if(leaveFrom.equalsIgnoreCase("Mess") || leaveFrom.equalsIgnoreCase("mess ") || leaveFrom.equalsIgnoreCase(" mess")){
			leaves.setTypeOfLeave(1);
		}else if(leaveFrom.equalsIgnoreCase("Hostel") || leaveFrom.equalsIgnoreCase("Hostel ") || leaveFrom.equalsIgnoreCase(" Hostel")){
			leaves.setTypeOfLeave(2);
		}
		
		System.out.println("leaves "+leaves.getLeaveFor()+" type "+leaves.getTypeOfLeave());
		
		selfieservice.setStudentLeavesDetails(leaves);
		return "redirect:LeaveApplication";
	}
	
	@RequestMapping("mess")
	public String showFormMess(Model model) {
		System.out.println("============================");
		model.addAttribute("Mess", new SelfieDomain());
		
		/*selfieservice.getStudentBillsDetails(rollNumber);*/
		List<StudentBills> data=selfieservice.getAllStudentDetails();
		System.out.println(data);
		
		
		ArrayList messList=new ArrayList();
		for(int i=0;i<data.size();i++){
			Map<String, String> author1 = new HashMap();
			  author1.put("names", data.get(i).getStudentName());
			  author1.put("attendence", data.get(i).getTotalDaysMess());
			  author1.put("rollnumber", data.get(i).getRollNumber()+"");
			  messList.add(author1);
		}
		
		
		
		model.addAttribute("userdetails", messList);
		
		
		
		return "mess";
	}
	
	
	
	
	@RequestMapping("messdetails")
	public String messDetails(HttpServletRequest request, Model model, @RequestParam("studentNames") String [] names,@RequestParam("numberOfDays") String [] days,@RequestParam("rollNumber") String [] rollNumber) throws ParseException, DatatypeConfigurationException {
		getPropertyFileValues();
		for(int i=0;i<days.length;i++){
			StudentBills bills=new StudentBills();
			System.out.print(names[i]);
			System.out.print(days[i]);
			System.out.print(rollNumber[i]);
			System.out.println();
			System.out.println("_____________________");
			bills.setRollNumber(Integer.parseInt(rollNumber[i]));
			bills.setTotalDaysMess(days[i]);
			bills.setStatus(foodPricePerDay);    //Used temp to store price of plate /day. from property file
			bills.setRoomRent(rent);
			System.out.println(days[i]+"   "+Integer.parseInt(rollNumber[i])+"   "+foodPricePerDay+"   "+rent);
			selfieservice.incrementNumberOfDayInMess(bills);
		}
		return "redirect:mess";
		
	}
	
	
	
	
	@RequestMapping("NewFinal")
	public String showFormNewFinal(Model model) {
		System.out.println("============================");
		model.addAttribute("newfinal", new SelfieDomain());
		
		List<StudentLeaves> data=selfieservice.getAllLeavesDetails();
		
		ArrayList leaveList=new ArrayList();
		for(int i=0;i<data.size();i++){
			if(data.get(i).getStatus()==0){
			  Map<String, String> author1 = new HashMap();
			  author1.put("names", data.get(i).getStudentName());
			  author1.put("reason", data.get(i).getReason());
			  author1.put("rollnumber", data.get(i).getRollNumber()+"");
			  author1.put("status", data.get(i).getStatus()+"");
			  author1.put("startDate", data.get(i).getStartDate()+"");
			  author1.put("endDate", data.get(i).getLeaveDate()+"");
			  author1.put("numberOfDays", data.get(i).getNumberOfDays()+"");
			  author1.put("typeOfLeave", data.get(i).getTypeOfLeave()+"");
			  leaveList.add(author1);
			}
		}
		model.addAttribute("userdetails", leaveList);
		
		return "NewFinal";
	}
	
	
	@RequestMapping("leaveStatusDetails")
	public String leaveStatusDetails(HttpServletRequest request, Model model, @RequestParam("studentNames") String [] names,@RequestParam("numberOfDays") String [] days,@RequestParam("rollNumber") String [] rollNumber) throws ParseException, DatatypeConfigurationException {
		getPropertyFileValues();
		for(int i=0;i<days.length;i++){
			StudentBills bills=new StudentBills();
			System.out.print(names[i]);
			System.out.print(days[i]);
			System.out.print(rollNumber[i]);
			System.out.println();
			System.out.println("_____________________");
			if((days[i]+"").equals("true")){
			System.out.println("true");	
			selfieservice.setStudentLeavesDeails(Integer.parseInt(rollNumber[i]),1);
			}else{
				selfieservice.setStudentLeavesDeails(Integer.parseInt(rollNumber[i]),0);
			}
		}
		return "redirect:NewFinal";
		
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
	    

	    @RequestMapping("logout")
		public String printMessage(Model model,HttpServletRequest request, HttpServletResponse response) {
	    	model.addAttribute("changeuser", new SelfieDomain());
			 HttpSession session=request.getSession();
			 session.invalidate();
			 response.setHeader("Cache-Control","no-cache"); 
			 response.setHeader("Cache-Control","no-store");
			 response.setDateHeader("Expires", 0);	
			 response.setHeader("Pragma","no-cache");
 			 model.addAttribute("errMsg","Please Erter Proper Credentials to login again you have logout");
		return "redirect:loginform";
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
					String rectorEmail=prop.getProperty("rector.email");
					String messEmail=prop.getProperty("mess.email");
					String otherEmailId=prop.getProperty("other.email");
					String foodPricePerDayLocal=prop.getProperty("food.price");
					rent=prop.getProperty("rent");
				    rectorEmailId=rectorEmail;
					messEmailId=messEmail;
					otherEmailId1=otherEmailId;
					foodPricePerDay=Integer.parseInt(foodPricePerDayLocal);
				} catch (Exception e) {
					System.out.println("Exception: " + e);
				} 
		   }
	    
	    
}
