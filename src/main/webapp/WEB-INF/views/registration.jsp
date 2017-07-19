<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java"    pageEncoding="utf-8"%>
<%@ page import="java.lang.*"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>Registration form Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
     <%@include file="bootstrap/css/bootstrap.min.css"%>
  	 <%@include file="font-awesome/css/font-awesome.min.css"%>
</style>


    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="page-header">
    <h1>Registration form <small></small></h1>
    <p style="color:green; font-size:125%;margin-left:399px; margin-right:-10000px; margin-top:18px;"  id="message">${message}</p>
</div>

<!-- Registration form - START -->
<div class="container">
    <div class="row">
        <form:form action="registrationdetails" commandName="register" id="imageform" modelAttribute="register" role="form">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">Enter Name</label>
                    <div class="input-group">
                        <form:input type="text" class="form-control" path="studentName" name="InputName" id="InputName" placeholder="Enter Name" ></form:input>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Enter Email</label>
                    <div class="input-group">
                        <form:input type="email" class="form-control" id="InputEmailFirst" path="emailId" name="InputEmail" placeholder="Enter Email" ></form:input>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Password</label>
                    <div class="input-group">
                        <form:input type="password" class="form-control" id="InputEmailSecond" path="type" name="InputEmail" placeholder="Password" ></form:input>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                 <div class="form-group">
                    <label for="InputName">Mobile number</label>
                    <div class="input-group">
                        <form:input path="mobileNumber" type="text" class="form-control" name="InputName" id="mobile" placeholder="mobile" ></form:input>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                 <div class="form-group">
                 <div class="form-group">
                    <label for="InputName">Mobile(parents)</label>
                    <div class="input-group">
                        <form:input type="text" class="form-control" path="parentMobile" name="InputName" id="pmobile" placeholder="pmobile" ></form:input>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
               
               
                
                    <label for="InputMessage">Address</label>
                    <div class="input-group">
                        <form:textarea name="InputMessage" path="address" id="Address" class="form-control" rows="5" ></form:textarea>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right" class="link animated fadeInUp delay-1s" onclick="abc()">
            </div>
        </form:form>
        <!-- <div class="col-lg-5 col-md-push-1">
            <div class="col-md-12">
                <div class="alert alert-success">
                    <strong><span class="glyphicon glyphicon-ok"></span> Success! Message sent.</strong>
                </div>
                <div class="alert alert-danger">
                    <span class="glyphicon glyphicon-remove"></span><strong> Error! Please check all page inputs.</strong>
                </div>
            </div>
        </div> -->
    </div>
</div>
<!-- Registration form - END -->

</div>
<script>
document.getElementById('submit').onclick=function(){
    window.location.href="index.html" ;
};



   function abc(){
	   alert('1');
	 
	//   window.location="http://www.google.com";
	   
   }
</script>
</body>
</html>