<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Selfie Project</title>
	</head>
	<body>
		<h1>Spring 3</h1>
		<ul>
			<li><a href="login/index"> Click here for login</a></li>
		</ul>
		   <div class="loader"></div>
   <style>
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url('../images/page-loader31.gif') 50% 50% no-repeat rgb(249,249,249);
}
</style>
 <script type="text/javascript">
$(window).load(function() {
	$(".loader").fadeOut("slow");
})
</script>  
		<script language="javascript">
   			 window.location.href = "login/index";
	   </script>


	</body>

</html>

