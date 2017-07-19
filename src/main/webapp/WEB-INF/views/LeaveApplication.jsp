<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<!-- Website CSS style -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Website Font style -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel="stylesheet" href="style.css">
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

	<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
	<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

	<!-- Bootstrap Date-Picker Plugin -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
	<title>Admin</title>
</head>
<body>
<div class="container">
	<div class="row main">
		<div class="main-login main-center">
			<h5 style="font-size: 25px;margin-left: 127px;">Apply Leave</h5>
			<form class="" method="post" action="#">

				<div class="form-group">
					<label class="cols-sm-2 control-label">Select Type of Leave</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>

							<select class="form-control" id="leave">
								<option value="halfday">Half Day</option>
								<option value="fullday">Full Day</option>
								<option value="late">Will Be Late </option>
							</select>


						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="username" class="cols-sm-2 control-label">Leave For</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
							<input type="text" style="width:343px;" class="form-control" name="username" id="leavefor"  placeholder="Mess/Hostel"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="username" class="cols-sm-2 control-label">Username</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
							<input type="text" style="width:343px;" class="form-control" name="username" id="username"  placeholder="Enter your EmailId"/>
						</div>
					</div>
				</div>

				<div class="form-group"> <!-- Date input -->
					<label class="control-label" for="date">Number Of days</label>
					<input class="form-control" id="numberofdays" style="margin-left:5px;" name="dateTwo" placeholder="enter days" type="text"/>
				</div>

				<div class="form-group"> <!-- Date input -->
					<label class="control-label" for="date">Start Date</label>
					<input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
				</div>


				<div class="form-group"> <!-- Date input -->
					<label class="control-label" for="date">End Date</label>
					<input class="form-control" id="dateTwo" style="margin-left:5px;" name="dateTwo" placeholder="MM/DD/YYY" type="text"/>
				</div>


				<div class="form-group">
					<label for="reason" class="cols-sm-2 control-label">Enter Reason For Leave.</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<textarea  class="form-control" rows="4" cols="50" name="email" id="reason"  placeholder="Reason"/></textarea>
						</div>
					</div>
				</div>





				<div class="form-group ">
					<a href="javascript:void(0)" onclick="abc()" target="_blank" style="margin-left:153px;" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button" onclick="abc()" >Apply</a>
				</div>

			</form>
		</div>
	</div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

		<form:form action="saveleaveApplication" commandName="leaveApplication" id="imageform" modelAttribute="leaveApplication">
				<form:input type="text" id="typeOfLeave"  path="typeOfLeave" style="visibility:hidden" ></form:input><br>
				<form:input type="text" id="leaveFrom"  path="leaveFrom"  style="visibility:hidden" ></form:input><br>
			    <form:input type="text" id="emailId"  path="emailId" style="visibility:hidden" ></form:input><br>
			    
			    <form:input type="text" id="numberOfDays2"  path="numberOfDays" style="visibility:hidden" ></form:input><br>
				<form:input type="text" id="startDate"  path="startDate"  style="visibility:hidden" ></form:input><br>
			    <form:input type="text" id="endDate"  path="endDate" style="visibility:hidden" ></form:input><br>
			    <form:input type="text" id="reasonForLeave"  path="reasonForLeave" style="visibility:hidden" ></form:input><br>
			    
		</form:form>

<script>



    function abc() {
    	var e=document.getElementById("leave");
    	var leaveType=e.options[e.selectedIndex].text;
        var leavefor=document.getElementById("leavefor").value;
        var username=document.getElementById("username").value;
        var numberofdays=document.getElementById("numberofdays").value;
        var date=document.getElementById("date").value;
        var dateTwo=document.getElementById("dateTwo").value;
        var reason=document.getElementById("reason").value;
        document.getElementById("typeOfLeave").value=leaveType;
        document.getElementById("leaveFrom").value=leavefor;
        document.getElementById("emailId").value=username;
        document.getElementById("numberOfDays2").value=numberofdays;
        document.getElementById("startDate").value=date;
        document.getElementById("endDate").value=dateTwo;
        document.getElementById("reasonForLeave").value=reason;
        document.getElementById('imageform').submit();	
        
        /* var complainjson = {

            "leavefor": leavefor,
            "username": username,
            "numberofdays":numberofdays,
            "dateofstart":date,
            "todate":dateTwo,
            "reason":reason
        }
        $.ajax({

            type: "POST",
            contentType: 'application/json; charset=utf-8',
            url: "/api/leave",
            data: JSON.stringify(complainjson), // Note it is important
            success: function(result){

                 alert(8);
                alert(result);
                window.location.href = "/Overview.html"
            }
        });
 */
        //window.location = "http://www.google.com";
        // window.location.href = "/index";
        //window.location="http://localhost:8080/index.html";
    }

</script>
<script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        var options={
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input.datepicker(options);
    })
</script>


<style>
	/*
/* Created by Filipe Pina
 * Specific styles of signin, register, component
 */
	/*
     * General styles
     */
	#playground-container {
		height: 500px;
		overflow: hidden !important;
		-webkit-overflow-scrolling: touch;
	}
	body, html{
		height: 100%;
		background-repeat: no-repeat;
		background-color: #292b2c;
	}

	.main{
		margin:50px 15px;
	}

	h1.title {
		font-size: 50px;
		font-family: 'Passion One', cursive;
		font-weight: 400;
	}

	hr{
		width: 10%;
		color: #fff;
	}

	.form-group{
		margin-bottom: 15px;
	}

	label{
		margin-bottom: 15px;
	}

	input,
	input::-webkit-input-placeholder {
		font-size: 11px;
		padding-top: 3px;
	}

	.main-login{
		background-color: #fff;
		/* shadows and rounded borders */
		-moz-border-radius: 2px;
		-webkit-border-radius: 2px;
		border-radius: 2px;
		-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

	}
	.form-control {
		height: auto!important;
		padding: 8px 12px !important;
	}
	.input-group {
		-webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
		-moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
		box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
	}
	#button {
		border: 1px solid #ccc;
		margin-top: 28px;
		padding: 6px 12px;
		color: #666;
		text-shadow: 0 1px #fff;
		cursor: pointer;
		-moz-border-radius: 3px 3px;
		-webkit-border-radius: 3px 3px;
		border-radius: 3px 3px;
		-moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
		-webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
		box-shadow: 0 1px #fff inset, 0 1px #ddd;
		background: #f5f5f5;
		background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
		background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
		background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
		background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
		background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
	}
	.main-center{
		margin-top: 30px;
		margin: 0 auto;
		max-width: 400px;
		padding: 10px 40px;
		background:#565656;

		color: #FFF;
		text-shadow: none;
		-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
		-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
		box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

	}
	span.input-group-addon i {
		color: #009edf;
		font-size: 17px;
	}

	.login-button{
		margin-top: 5px;
	}

	.login-register{
		font-size: 11px;
		text-align: center;
	}

</style>
</body>
</html>