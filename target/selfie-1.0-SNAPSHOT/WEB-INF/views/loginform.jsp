<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java"    pageEncoding="utf-8"%>
<%@ page import="java.lang.*"%>
<html  lang="en-US">
 <head>
 
 <style>

 @font-face {
 font-family: 'VPBank';
    src: url(font/VPBank Bold Italic_0.ttf),
  		 url(font/VPBank Bold_0.ttf),
   		  url(font/VPBank Italic_0.ttf),
   		  url(font/VPBank_0.ttf);
}



 </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
 
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>F.E CREDIT</title>
  <!-- CSS -->
  
  
  <!-- Other scripts -->
  <script type="text/javascript">
   document.documentElement.className += ' js';
</script>
   </head>
 <body>



 
   <div>   
   			<img src="../images/logo.png" style="height:65px;width:200px;margin-left:181px;">
   			<span style="color:red;margin-left:77px;font-size: 120%">${message}</span>
   </div>
  
   <hr/>
  
   
		
		<form:form action="logindetails" commandName="loginForm" id="imageform" modelAttribute="loginForm">
		    <h3 style="margin-left: 430px;margin-top: 155px;">Tên đăng nhập:
		    <form:input type="text" path="hoTen"  style="height: 25px;width: 250px;"/>
		    </h3>
			
			<h3 style="margin-left:470px">Mật khẩu:
			<form:input type="password" path="MaKhachHang" style="height: 25px; width: 250px;margin-left: 3px;"/>
			</h3>
			
			<button type="submit" id="login-button" style="border-radius: 10px;margin-left: 625px;margin-top: 20px;height:39px;width:125px;background-color:green;color:white;cursor:pointer;">ĐĂNG NHẬP</button>
	    </form:form>
	    
	
		  <ul>
	    	 <li><a href="forgotpassword" style="margin-left:520px">Bạn quên tên đăng nhập hay mật khẩu?</a></li>
	     </ul>
	 
	     
	 <script>
		function submitToNextPage(){
				document.getElementById('imageform').submit();
		 }
	</script>
   </body>
</html>
