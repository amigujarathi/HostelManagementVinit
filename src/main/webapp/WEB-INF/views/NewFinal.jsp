<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>

<html lang="en">
    <head> 
				<title>Admin</title>
	</head>
	<body style="background-color:#7e8c92">
	
	<h3  style="margin-left: 555px;">Attendence</h3>
	
	<table>
		<tr>
				<th>Roll Number</th>
				<th>Student Name</th>
				<th>Number Of Days</th>
				<th>Leave Applied</th>
				<th>Start Date</th>
				<th>End Date</th>
				<th>Reason</th>
				<th>Status</th>
		</tr>
		
	<c:set var="count" value="0" scope="page" />	
	    <c:forEach  items="${userdetails}" var="article">
				<tr>
			        <td><c:out  value="${article.rollnumber}" /></td>
					<td><c:out  value="${article.names}" /></td>
					<td><c:out  value="${article.numberOfDays}" /></td>
					<td><c:out  value="${article.typeOfLeave}" /></td>
					<td><c:out  value="${article.startDate}" /></td>
					<td><c:out  value="${article.endDate}" /></td>
						<td><c:out  value="${article.reason}" /></td>
					<td> <input type="checkbox" name="TextBox" id="TextBox${count}" value='<c:out  value="${article.attendence}" />' /></td>
				<%-- 	<td><input type="Button" onclick="addvalue('<c:out value="${article.attendence}" />',${count})" id="AddButton${count}" value="+" /></td> --%>
			   </tr>
			 
        <c:set var="count" value="${count + 1}" scope="page"/>o
	 </c:forEach>
			 
	
			 
			 <!-- <tr>
				<td>Alfreds Futterkiste</td>
				<td> <input type="text" name="TextBox" id="TextBox" value="0" /></td>
				<td><input type="Button" id='AddButton' value="+" /></td>
			  </tr>   -->
			
	</table>

	
	
	<form:form action="leaveStatusDetails" commandName="newfinal" id="imageform" modelAttribute="newfinal">
		<div class="login">
				<form:input type="text" id="studentNames"  path="studentNames" style="visibility:hidden" ></form:input><br>
				<form:input type="text" id="numberOfDays"  path="numberOfDays"  style="visibility:hidden" ></form:input><br>
			    <form:input type="text" id="rollNumber"  path="rollNumber" style="visibility:hidden" ></form:input><br>
				<input type="button" value="Update Details" onclick="saveValues()" style=" margin-left: 1172px;margin-top: -3px;height: 30px;">
		</div>
        </form:form>
        
        
        
        

        <script src="http://code.jquery.com/jquery-1.4.3.min.js"></script>
        <script>
		
	function addvalue(basevalue,count){
				//alert(basevalue+"   "+count);
				var temp=+basevalue;
				temp= temp + 1 ;
				basevalue=temp;
				//alert(basevalue+"   "+count);
                $('#TextBox'+count).val(basevalue);
                
             //   saveValues();
	}
	
	
	function saveValues(){
		//var listData[];
		$(function(){
		 var values = new Array();
		 var attendence = new Array();
		 var roll = new Array();
		 var countData=0;
	        <c:forEach var="article" items="${userdetails}">
	            values.push("${article.names}"); 
	            //values.push("${article.name}"); 
	            var idValue="TextBox"+countData;
	            //alert(document.getElementById(idValue).checked);
	          
	            attendence.push(document.getElementById(idValue).checked);
	            roll.push("${article.rollnumber}");
	            countData=countData+1;
	        </c:forEach>

	        document.getElementById("studentNames").value=values;
	        document.getElementById("numberOfDays").value=attendence;
	        document.getElementById("rollNumber").value=roll;
	        document.getElementById('imageform').submit();
		});
	        
	   
	}
          
        </script>
		
	<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
	
	</body>
</html>