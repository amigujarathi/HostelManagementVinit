$(document).ready(function(){

	var param1var1 = getQueryVariable("sbonline");
		//	alert("--test--"+param1var);
	//	alert(param1var1);
	var param1var =	param1var1.substring(0,4);
	var token = "7654321";
//	alert(token);
				 if(param1var=="sbol")
				{	
			//	alert("in SBOL hide");
		
			//	 $('#uploadDiv').hide();
				 $('#bigbanner').hide();		 
				 $('.botTxt').hide();
			     $(".btn").text("Confirm");
			//Disable All Hyper Link	 
			$('a').each(function(){
			$(this).data("href", $(this).attr("href")).removeAttr("href");
			});
		//Disable Menu Div Only
	/*	$('.accordCont a').each(function () {
    var $this = $(this),
        href = $this.attr('href');
    $this.attr('href', "#");
});*/
				} 
			function getQueryVariable(variable) {
			  var query = window.location.search.substring(1);
			  var vars = query.split("?");
			  for (var i=0;i<vars.length;i++) {
			    var pair = vars[i].split("=");
			    if (pair[0] == variable) {
			      return pair[1];
			    }
			  } 
			 
			 
			}			
			
				
				
			$(".btn").click(function(){
				if(param1var=="sbol")
				{
				
			//Enable Href
			$('a').each(function(){
    $(this).attr("href", $(this).data("href"));
			});
			 var href;
			
//				 if (window.opener != null && !window.opener.closed) {
			//	 alert("Inside");
	//		window.opener.document.parent.txtName.value = "Amar";
	//		window.close();
			
				   var txtName = parent.document.getElementById("txtName");
		//		  window.opener.document.parent.txtName.value 
//				   alert("txtName "+txtName);
				//	var txtName = window.opener.document.getElementById("txtName");
            $("a").click(function(event) {           
                href = $(this).attr('href');
       //        alert("+++ test +++"+href);  	
			$('a').each(function(){
			$(this).data("href", $(this).attr("href")).removeAttr("href");
			});
				var imgId=href.substring(10,15);
			var imgId;
				var variable="CardImageId";
				  var vars = href.split("&");
			  for (var i=0;i<vars.length;i++) {
			    var pair = vars[i].split("=");
			    if (pair[0] == variable) {
			      imgId=pair[1];
			//	  alert("image "+imgId);
			    }
			  } 	
var output;			  
//alert("Substring -- "+imgId.substring(0,3));			  
if(imgId.substring(0,3)=="ZOD")
{output="ZODIAC";}		
else if(imgId.substring(0,3)=="SPO")
{output="SPORTS";}	
else if(imgId.substring(0,3)=="KID")
{output="KIDS";}	
else if(imgId.substring(0,3)=="TRA")
{output="TRAVEL";}	
else if(imgId.substring(0,3)=="CHI")
{output="CHINESE ZODIAC";}	
else if(imgId.substring(0,3)=="NAT")
{output="NATURE";}	
else if(imgId.substring(0,3)=="FOO")
{output="FOOD";}
else if(imgId.substring(0,3)=="FAS")
{output="FASHINE";}
else if(imgId.substring(0,3)=="ANI")
{output="WILDLIFE";}
else if(imgId.substring(0,3)=="OPT")
{output="OPTICAL ILLUSION";}
else if(imgId.substring(0,3)=="ENT")
{output="ENTERTAINMENT";}
else if(imgId.substring(0,3)=="WHE")
{output="WHEELS";}
else if(imgId.substring(0,3)=="VIA")
{output="MOVIES";}
else if(imgId.substring(0,3)=="ERO")
{output="MOVIES";}
else if(imgId.substring(0,3)=="MOV")
{output="MOVIES";}

var data = imgId+"-"+output;	

window.location.href = "https://savingsaccount.icicibank.com/SBAOF/Redirection.jsp?expsbol="+data;
	
				});	
//				}
			   
				}
			});		
	
	
	

});
