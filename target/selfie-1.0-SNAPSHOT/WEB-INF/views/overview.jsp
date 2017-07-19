<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java"    pageEncoding="utf-8"%>
<%@ page import="java.lang.*"%>
<html  lang="en-US">
 <head>
 
 <style>
 table.table2, table.table2 td, table.table2 th {
    border: 1px solid black;
    height:50px;
}

table.table2 {
    border-collapse: collapse;
    width: 50%;
}

table.table2 td {
    height: 200px;
    vertical-align: bottom;
}
    
		   
    
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
  <style>
    <%@include file="css/login.css"%>
  </style>
  
  <!-- Other scripts -->
  <script type="text/javascript">
   document.documentElement.className += ' js';
</script>
   </head>
 <body>



   <div><!-- column -->
   <div>   
   			<img src="../images/logo.png" style="height:65px;width:200px;margin-left:181px;">
   </div>
   <hr/>
   <style>
   hr.style-four {
    height: 12px;
    border: 10px;
    box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
}


   </style>
   <div>
      <!--   <img src="../images/loginimage.png" style="margin-left: 136px; height: 358px;width: 1003px;">-->
       
   	<div>
   	<br/>
   	<br/>
   	<br/>
		
		<form:form action="logindetails" commandName="forgotPassword" id="imageform" modelAttribute="forgotPassword">
	
	
<div align="center" style="margin-top:-30px"><table>
		
		<span style="text-decoration: underline; margin-left:-557px; font-weight: bold;">Tìm kiếm theo:</span>
		

  <tr>
    <td>Họ Tên:<form:input type="text" name="hoTen" value="" path="hoTen" id="hoTen"/><span id="errfn" style="color:red"></span></td>
    <td>Mã Khách Hàng:<form:input type="text" name="MaKhachHang" id="MaKhachHang" value=""  path="MaKhachHang"/><span id="errfn1" style="color:red"></span></td>    

  </tr>
  <tr>
    <td><span style="margin-left:-105px">CMND/ Thẻ Căn Cước:</span> <form:input type="text" name="cmndTcc" value="" id="cmndTcc" path="cmndTcc"/><span id="errfn2" style="color:red"></span></td>
    <td><span style="margin-left:12px">Số Điện Thoại:</span><form:input type="text" name="soDienThoai" value="" id="soDienThoai" path="soDienThoai"/></td>  

  </tr>
  <tr>
    <td><span style="margin-left:-43px">Địa Chỉ Email:</span><form:input type="text" name="daiChiEmail" value="" id="daiChiEmail" path="daiChiEmail"/><span id="errfnemail" style="color:red"></span></td>     

  </tr>
  <tr>
  <td>				<br><img src="../images/submit6.png" onclick="submitToNextPage()" style=" margin-left:181px;height: 33px;cursor: pointer;">
  </td>
  <td>				<br><img src="../images/submit7.png" onclick="submitToNextPage()" style="height: 33px;cursor: pointer;margin-left:30px">
  </td>
  </tr>
   
</table>
				 
 			 </div>	   
				<div align="center"><table class="table2">
  <tr><br>
    <th>Sno</th>
    <th>CustomerId</th>
    <th>Image</th>
     <th>MobileNumber</th>
    <th>NationalId</th>
    <th>ActionBy</th>
    <th >DateAndTimeOfAction</th>

  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
     <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
   
</table>
				 
 			 </div>	   
	   </form:form>
	</div>
	</div>
 </div>
 
 
 
	  <script>  
	  function validateform(){  
		 
	  var hoTen123=document.getElementById("hoTen").value; 
	  var MaKhachHang123=document.getElementById("MaKhachHang").value;
	  var cmndTcc123=document.getElementById("cmndTcc").value;
	  
	  var soDienThoai123=document.getElementById("soDienThoai").value; 
	  var daiChiEmail123=document.getElementById("daiChiEmail").value;
	  var loaiThe123=document.getElementById("loaiThe").value;   
	  
	  var email = document.getElementById('daiChiEmail');
	  var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	  
	   
	  if (hoTen123==null || hoTen123=="" || hoTen123.length<2){  
	  	 // alert('Ho Ten can\'t be blank');  
	  	  document.getElementById('errfn').innerHTML='Ho Ten can\'t be blank/ Phần Họ tên không được để trống';
	  		 setTimeout(function(){
	  		document.getElementById('errfn').innerHTML="";
	  		}, 4000);
	    return false;  
	  }
	  
	  
	  
	  else  if (MaKhachHang123==null || MaKhachHang123==""){  
	  	  //alert('MaKhachHang can\'t be blank');  
	  	 document.getElementById('errfn1').innerHTML='MaKhachHang can\'t be blank/Mã khách hàng không để trống';
	  	 setTimeout(function(){
		  		document.getElementById('errfn1').innerHTML="";
		  		}, 4000);
	    return false;  
	  }
	  
	 
	 else if( /[^0-9\-\/]/.test( MaKhachHang123 ) ) {
		        //alert('MaKhachHang should be numeric');
		        document.getElementById('errfn1').innerHTML='MaKhachHang should be numeric/	Mã khách hàng phải là chuỗi số';
		        setTimeout(function(){
			  		document.getElementById('errfn1').innerHTML="";
			  		}, 4000);
		        return false;
		    } 
	  	
	  
	 else if (cmndTcc123==null || cmndTcc123==""){  
	  	 // alert('CMND/ Thẻ Căn Cước can\'t be blank');  
	  	  document.getElementById('errfn2').innerHTML='CMND/ Thẻ Căn Cước can\'t be blank/CMND/ Số thẻ căn cước không để trống';
	  	 setTimeout(function(){
		  		document.getElementById('errfn2').innerHTML="";
		  		}, 4000);
	    return false;  
	  }
	  
	 else if(!/^[a-zA-Z0-9]+$/.test( cmndTcc123 ) ) {
	       // alert('CMND/ Thẻ Căn Cước should be numeric');
	        document.getElementById('errfn2').innerHTML='CMND/ Thẻ Căn Cước should be Alphanumeric/CMND/ Số thẻ căn cước phải là chuỗi số';
	        setTimeout(function(){
		  		document.getElementById('errfn2').innerHTML="";
		  		}, 4000);
	        return false;
	    } 
	  
	 else if (soDienThoai123==null || soDienThoai123==""){  
	  	  //alert('Số Điện Thoại can\'t be blank');  
	  	  document.getElementById('errfn3').innerHTML='Số Điện Thoại can\'t be blank/ Số điện thoại không để trống';
	  	 setTimeout(function(){
		  		document.getElementById('errfn3').innerHTML="";
		  		}, 4000);
	    return false;  
	  }
	  
	 else if( /[^0-9\-\/]/.test( soDienThoai123 ) ) {
	       // alert('Số Điện Thoại should be numeric');
	        document.getElementById('errfn3').innerHTML='Số Điện Thoại should be numeric/ Số điện thoại phải là chuỗi số';
	        setTimeout(function(){
		  		document.getElementById('errfn3').innerHTML="";
		  		}, 4000);
	        return false;
	    } 
	  
	  else  if (!filter.test(email.value) || email=="") {
	 	// document.getElementById('errfn').innerHTML="Please provide a valid email address";
	 	//  alert('Please Enter Correct Email ID'); 
	 	  document.getElementById('errfnemail').innerHTML='Please Enter Correct Email ID/Vui lòng nhập đúng địa chỉ thư điện tử';
	 	 setTimeout(function(){
		  		document.getElementById('errfnemail').innerHTML="";
		  		}, 4000);
	 	 return false;
		 } 
	  else{
		  //document.getElementById('errfn').innerHTML="";
		  //document.getElementById('errfn2').innerHTML="";
		  //document.getElementById('errfn3').innerHTML="";
		  //document.getElementById('errfnemail').innerHTML="";
		  return true;
	  }
		 
	  }  
	  </script>  
	  
	  
	  
	 <script>
	function submitToNextPage(){
		var atLeastOneIsChecked = $('input[name="checkboxnew"]:checked').length > 0;
		var check = $('input[name="checkboxherenew"]:checked').length > 0;
		if(check && atLeastOneIsChecked){
			var flag=validateform();
			   //alert(flag);
				if(flag){
				document.getElementById('imageform').submit();
				}
				else{
					
				}
		}
		else{
			 alert('Please Select Both check Box/Vui lòng đánh dấu chọn vào cả 2 ô');
		}
		
	 }
</script>
  


	<script type="text/javascript">
        function codeAddress() {
        
        	
        	var isMobile = {
        		    Android: function() {
        		        return navigator.userAgent.match(/Android/i);
        		    },
        		    BlackBerry: function() {
        		        return navigator.userAgent.match(/BlackBerry/i);
        		    },
        		    iOS: function() {
        		        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
        		    },
        		    Opera: function() {
        		        return navigator.userAgent.match(/Opera Mini/i);
        		    },
        		    Windows: function() {
        		        return navigator.userAgent.match(/IEMobile/i);
        		    },
        		    any: function() {
        		        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
        		    }
        		};
        	 function getAndroidVersion(ua) {
                 ua = (ua || navigator.userAgent).toLowerCase(); 
                 var match = ua.match(/android\s([0-9\.]*)/);
                 return match ? match[1] : false;
             };
             function isIphone() {
             	  return !!navigator.userAgent.match(/iPhone/i);
             	}
        	//alert('Checking Mobile or PC'+isMobile.any());
        	if( isMobile.any() ){ 
        			//alert('Mobile');
        		if(isMobile.Android()){
         			if(parseFloat(getAndroidVersion())>5){
         			}else{
         				alert('This site works best in the following mobile versions - Android 5 or higher,IOS 4 or higher versions.');
         			}
         			
        			
        		}
        		if(isMobile.iOS()){
        			var iphoneornot=isIphone();
        	    	if(iphoneornot){
        	    		var versioniphone=iPhoneVersion();
             	    	if(versioniphone>4){
            	    		}
             	    	else{
             				alert('This site works best in the following mobile versions - Android 5 or higher,IOS 4 or higher versions.');

             	    	}
            	    	}
            	    	
        		}
        		if(isMobile.iOS()){
        			 var selector = document.getElementById ( "img3" ) ;
        			 img3.style.marginLeft = "1250px" ;
               		 
        			 var img4 = document.getElementById ( "img4" ) ;
        			 img4.style.marginLeft = "1200px" ;
        			 
        			 var MaKhachHangId = document.getElementById ( "MaKhachHangId" ) ;
        			 MaKhachHangId.style.marginLeft = "-25px" ;
        			 
        			 var cmndTccId = document.getElementById ( "cmndTccId" ) ;
        			 cmndTccId.style.marginLeft = "-45px" ;
        			 
        			 var soDienThoaiid = document.getElementById ( "soDienThoaiid" ) ;
        			 soDienThoaiid.style.marginLeft = "-20px" ;
        			 
        			 var daiChiEmailIdValue = document.getElementById ( "daiChiEmailIdValue" ) ;
        			 daiChiEmailIdValue.style.marginLeft = "-20px" ;
        			 
        			 var loaiTheIdVal = document.getElementById ( "loaiTheIdVal" ) ;
        			 loaiTheIdVal.style.marginLeft = "-10px" ;
        			 
        			 var font1 = document.getElementById ( "font1" ) ;
        			 font1.style.fontSize = "10px" ;
        			 
        			 var font2 = document.getElementById ( "font2" ) ;
        			 font2.style.fontSize = "10px" ;
        			 
        		}
        	}
        	
        	
            var isOpera = (!!window.opr && !!opr.addons) || !!window.opera || navigator.userAgent.indexOf(' OPR/') >= 0;
    	    // Firefox 1.0+
	   var isFirefox = typeof InstallTrigger !== 'undefined';
	    	// At least Safari 3+: "[object HTMLElementConstructor]"
		var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
	    	// Internet Explorer 6-11
		var isIE = /*@cc_on!@*/false || !!document.documentMode;
	    	// Edge 20+
		var isEdge = !isIE && !!window.StyleMedia;
	    // Chrome 1+
		var isChrome = !!window.chrome && !!window.chrome.webstore;
	    // Blink engine detection
		var isBlink = (isChrome || isOpera) && !!window.CSS;
	
		var isMobile = {
    		    Android: function() {
    		        return navigator.userAgent.match(/Android/i);
    		    },
    		    BlackBerry: function() {
    		        return navigator.userAgent.match(/BlackBerry/i);
    		    },
    		    iOS: function() {
    		        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    		    },
    		    Opera: function() {
    		        return navigator.userAgent.match(/Opera Mini/i);
    		    },
    		    Windows: function() {
    		        return navigator.userAgent.match(/IEMobile/i);
    		    },
    		    any: function() {
    		        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    		    }
    		};
 
    function get_browser_info(){
        var ua=navigator.userAgent,tem,M=ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || []; 
        if(/trident/i.test(M[1])){
            tem=/\brv[ :]+(\d+)/g.exec(ua) || []; 
            return {name:'IE ',version:(tem[1]||'')};
            }   
        if(M[1]==='Chrome'){
            tem=ua.match(/\bOPR\/(\d+)/)
            if(tem!=null)   {return {name:'Opera', version:tem[1]};}
            }   
        M=M[2]? [M[1], M[2]]: [navigator.appName, navigator.appVersion, '-?'];
        if((tem=ua.match(/version\/(\d+)/i))!=null) {M.splice(1,1,tem[1]);}
        return {
          name: M[0],
          version: M[1]
        };
     }
    
    
    if(isMobile){
    	
    	
    }
    else{
    var browser=get_browser_info();
    if(isIE && browser.version>9){
       }
    else if(isChrome && browser.version>54){
       } 
    else if(isOpera && browser.version>10){
              // alert('Browser 1');
	}
    else if(isFirefox && browser.version>54){
        //alert(browser.version);
   }
    else if(isSafari && browser.version>5){
    }
    else{
		alert("Trang web này hoạt động tốt nhất trên các trình duyệt sau - Chrome 55 trở lên, IE 10 trở lên, Safari 6 trở lên và Firefox 55 trở lên.");
	}
   }

        }
        window.onload = codeAddress;
        </script>
    
 
  <script type="text/javascript">
   window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script src="scripts/museutils.js?275725342" type="text/javascript"></script>
  <script src="scripts/jquery.musepolyfill.bgsize.js?185257658" type="text/javascript"></script>
  <!-- Other scripts -->
 
   </body>
</html>
