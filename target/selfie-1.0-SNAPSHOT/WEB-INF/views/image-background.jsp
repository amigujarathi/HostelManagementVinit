	<%@ page language="java"   pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html class="html" lang="en-US">

  <head>
    <title>F.E CREDIT</title>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery.cropit.js"></script>
    <script src="../js/exif.js"></script>
  </head>
  
  

  
  <body>
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
  
  
	   <div>   
	   			<img src="../images/logo.png" style="height:65px;width:200px;margin-left:181px;">
	   			<span id="result1" style=" color:red;margin-left:180px;font-size: 120%">${errormsg}</span>
	   			<input type="hidden"  id="result"   value="${resultmsg}"/>
	   				
	   			
	   </div>
  	   <hr id="lineid">
	   <style>
	   hr.style-four {
	    height: 12px;
	    border: 10px;
	    box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
	    width=100vw;
	}
	   </style>
		 <script>
		 var width=$(window).width();
		 var lineid = document.getElementById ( "lineid" ) ;
		 lineid.style.width=width;
		 </script>
		 
		 
		 
		 
		 
		 
		 
		 <div id="mobileview">
		  <br><br><br><br><br><br><br><br>
		 </div>
		 
    	<div class="image-editor" align="center" style="color:#0000FF" >
		     <div id="tab_middle">
			     <img  src="../images/pagefileselector.png" style="opacity:1;margin-left: -146px;width: 944px;" id="selectortab" />   
						<div class="image-size-label" id="labelid"  style="margin-top: 10px;margin-left: 296px;visibility: hidden;position: absolute;">
							Resize image
					  	</div>
						<input type="file" class="cropit-image-input" onchange="ChangeText(this,'fileText')" id="abc"  style=" margin-top: -89px;margin-left: -65px;position: relative;z-index: 2;width: 300px;" />
					 	<input type="text" style="visibility:hidden" id="fileText" onclick ="javascript:document.getElementById('abc').click();" />
						<div style="margin-top:65px;">
							<img src="../images/page3menunew.png" style=" margin-left: -405px;height: 56px;position:relative;margin-top: 88px;visibility: hidden;" id="page3menu" />
						</div>
						<div>
							<input type="range" min="0"   max="200" value="100" class="cropit-image-zoom-input" onchange="outputUpdate(this.value);" id="sizeimage" style="position: relative;visibility: hidden;" />
					 		<output for="sizeimage" id="volume" style="visibility:hidden"></output>
					 	</div>
						<button class="rotate-cw" width="48" height="48" id="rotateid" style="position: relative;visibility: hidden;opacity: 0;cursor: pointer;">
								<img  src="../images/ACW.png" style="opacity:0; height:25px; width:25px" />   
						</button>
						<div style=" margin-left: 270px; margin-top: 57px; width: 222px;" id="messagePage3">
							<span style=" margin-left: -405px;height: 56px;position: relative;margin-top: 88px;visibility: hidden;" id="message1">
								<h1 class="headerText" style="font-size: 170%;margin-left: 40px;">
									<img src="../images/exclemation.png" style="height: 40px; position: absolute; margin-left: -51px; margin-top: -8px;" id="imagepage3image">
									<b style="color:red">Lưu ý:</b>
								</h1>
								<p class="normalText" style="font-size: 145%; margin-left: 20px;">
									<img src="../images/tabArrow.jpg">
									 	Hãy để vị trí ảnh lấp đều</br>
				 					 phần trắng trên mặt Thẻ</br>
				 					 <img src="../images/tabArrow.jpg">
				  					 	Hãy chắc chắn rằng hình ảnh</br>
				 				  	của bạn không chứa:<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Tài liệu bản quyền hay</br>
                   					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;thương hiệu</br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Nội dung không phù hợp</br>
								</p>
							</span>
						</div>
						<div style="margin-top: 50px;" >
							<img src="../images/page3preview.png" class="export" id="previewid"  style="margin-left: 536px;visibility: hidden;position: relative;margin-top: -514px;cursor: pointer;" />
						</div>
							 <canvas id="myCanvasmain" width="1012" height="636" style="height: 214px;  position: absolute; visibility:hidden;border-radius:10px;border-style:hidden;border-radius: 15px;margin-left: -148px;margin-top: 29px">Your browser does not support the HTML5 canvas tag.</canvas>
						<div style="margin-top:39px;">
						 <span style=" margin-left: -405px;height: 56px;position:relative;margin-top: 188px;visibility: hidden;" id="message2">
							<img src="../images/box.png" style="height: 165px; margin-top: 30px;">
							<p class="normalText" id="textNew" style="font-size: 145%; margin-left: 190px;margin-top:-132px;position: absolute;width: 300px;">
									 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đây là hình ảnh</br>
				 					 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thẻ tín dụng</br>
				 						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FE CREDIT PLUS+<br>
				  					 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;của bạn.</br>
							</p>
						 </span>
						</div>
						<div style="width:599px;margin-left: -225px;margin-top: 20px;">
						 <span style=" margin-left: -405px;height: 56px;position: relative;margin-top: 588px;visibility: hidden;" id="message3">
							<p class="normalText" style="font-size: 157%;; margin-left: 20px;">	
							Vui lòng xoay hình ảnh của Quý Khách để có được thẻ Plus ưng ý nhất</br>
									Nếu bạn hài lòng với hình ảnh Thẻ, nhấn ‘Gửi hình ảnh’ để tiếp tục.
							</p>		
						 </span>
						</div>
						<!--  <img src="../images/page3message2.png" style=" margin-left: -405px;height: 56px;position: absolute;margin-top: 188px;visibility: hidden;" id="message2"> -->
						<div style="margin-top:-599px;">
							<img src="../images/page3save.png" class="save"  style="margin-left: 118px;position: absolute;margin-top: 30px;visibility: hidden;" id="saveid">
						</div>
			   </div>
	
		
		  <script>
		  function outputUpdate(vol) {
				document.querySelector('#volume').value = vol*100;
			}
		  </script>
	      <div class="cropit-preview" style="border-style: ridge;">
			<img id="overlay" src="../images/2939.png" style="opacity:1; height:100%; width:100%;border-style: ridge;visibility: hidden;"/>
		  </div>
     
      <div id="divx" style="width:1347px"> 
		<div style="text-align:center;">
			<div style="margin-left: 100px;font-size: 22px;margin-top: -221px;">	
				<h1 class="headerText">
					<b>Hướng dẫn tải hình ảnh</b>
				</h1>
				<p class="normalText">
					1. Nhấp chuột nút “Tìm kiếm” để chọn hình ảnh từ máy tính của bạn</br>
					2. Chọn hình ảnh từ máy tính bằng cách nhấn chuột 2 lần vào ảnh</br>
					3. Nhấn chọn ‘Tải hình ảnh’</br>
				</p>
					
				<h1 class="headerText" style="font-size:80%">	
					<div class="warning" style="float:left;">!</div>
					<b>&nbsp;Vài điều cần ghi nhớ:</b>
				</h1>
				</header>
				<p class="normalText">
				    . Bạn có thể tải nhiều hình ảnh nhưng chỉ sử dụng hình ảnh cuối cùng được tải lên. <br/><br/>
					. Sừ dụng hình ảnh chất lượng cao – hình ảnh chất lượng tốt để đảm bảo Thẻ in ra màu sắc sắc nét. Tập tin ảnh có thể là</br>
					  &nbsp;&nbsp;định dạng JPEG (.jpg), PNG, GIF, Bitmap (.bmp) hoặc TIFF.</br></br>
					. Lưu ý: Dung lượng hình ảnh càng lớn, thời gian tải hình ảnh sẽ lâu hơn.</br>
				</p>
				<h1 class="headerText">
					<b>Thẻ tín dụng FE CREDIT PLUS+ Selfie - Điều khoản và điều kiện:</b>
				</h1>
				<p class="normalText">
					1. Tôi cam kết rằng những hình ảnh này thuộc sỡ hữu của tôi và tôi cam kết chịu trách nhiệm trong việc sử dụng những</br>
					hình ảnh này trên Thẻ.</br></br>
					2. Tôi đồng ý với <a charset="UTF-8" href="https://fecredit.com.vn/wp-content/uploads/2016/12/TC_CRC_PlusCard_201612.pdf">Điều khoản & Điều kiện </a> và <a charset="UTF-8" href="https://fecredit.com.vn/wp-content/uploads/2016/12/ImageGuideline_CRC_PlusCard_201612.pdf">Nguyên tắc hình ảnh</a> của FE CREDIT cũng như quyền sử dụng hình ảnh trên</br>
					Thẻ tín dụng FE CREDIT PLUS + Selfie.</br></br>
					3. Tôi đồng ý rằng FE CREDIT không chịu bất kỳ trách nhiệm về tính hợp pháp, hợp lệ về nội dung hình ảnh của tôi được</br>
					thiết kế trên Thẻ.</br></br>
				</p>
			</div>
		
			<div>
			<input type="checkbox" id="keepsign" name="keepsigninchekbox" style="margin-left: 183px;margin-top: -30px; height:20px; width:20px;position: relative;"/>
				<div style="margin-left:-732px;margin-top:-23px">
				<label for="keepsign" class="normalText">
					<span id="fontvalue" style="position: relative;width: 983px; margin-left:599px;margin-top: -35px;font-size: 200%; ">Tôi đồng ý với các điều khoản và điều kiện của Thẻ tín dụng FE CREDIT PLUS+ Selfie và hướng dẫn sử dụng hình.</span> 
				</label>
				</div>
			</div>
		    </div>
		</div>
		
		<div style="margin-top:20px;" id="imagediv">
			<input type="submit" class="button" id="adjustimage"  style="position:relative;" value="TẢI ẢNH LÊN"></input>
		</div>
		  <canvas id="myCanvas" width="1012" height="636" style="height: 214px;  position: relative; visibility:hidden;   border-radius:10px;margin-left: 20px;margin-top: -293px;border-style:hidden;border-radius: 15px;">Your browser does not support the HTML5 canvas tag.</canvas>
		<div id="selectfilebutton"><input type="button" id="selectFileFireFox" style="visibility: hidden;" onclick="javascript:document.getElementById('abc').click();" ></div>
	</div>  
	
	
	
         <input type="text" id="imageMinSize" value="${imageMinSize}" style="visibility: hidden;"></input>
         <input type="text" id="imageMaxSize" value="${imageMaxSize}" style="visibility: hidden;"></input>
 		 <input type="text" id="imageHeight" value="${imageHeight}" style="visibility: hidden;"></input>
	 	 <input type="text" id="imageWidth" value="${imageWidth}" style="visibility: hidden;"></input>
		 <input type="text" id="imageFormats" value="${imageFormats}" style="visibility: hidden;"></input>
		
		<form:form action="uploadFile" commandName="image" id="imagePage" modelAttribute="image">
			<form:input type="hidden" value="" id="hiddenArray" path="hiddenArray" />	
			<form:input type="hidden" value="" id="fileName" path="fileName" />	
		 </form:form>


     <script>
   
     $("document").ready(function(){
    	 var isIE = /*@cc_on!@*/false || !!document.documentMode;
    	 var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
    	 var result=document.getElementById("result").value;
    	 if (result!='' || result=="undefined" ) {
    	        alert("Bạn đã tải thành công hình ảnh cho thẻ Selfie lên hệ thống của chúng tôi. Hiện tại, hình ảnh của bạn đang trong quá trình kiểm duyệt và thẻ sẽ được phát hành sau đó. Xin cảm ơn");
    	        window.location.href = "loginform";
    	    }
    	 var length;
    	 var width;
    	 var size;
    	 var invalidFormat=1;
    	 //id=abc is browse button
    	 $("#abc").change(function(e) {
                document.getElementsByClassName('cropit-preview-image-container')[0].style.visibility = 'hidden';
                document.getElementsByClassName('cropit-preview-background-container')[0].style.visibility = 'hidden';
               	 var imageFormatsVal=document.getElementById("imageFormats").value;
   		    	  var temp = new Array();
   		     	 temp = imageFormatsVal.split(",");
                 var overlayid = document.getElementById ( "overlay" ) ;
                 overlayid.style.visibility = "hidden" ;
                 var _URL = window.URL || window.webkitURL;
		      
              	 var image, file;
		            if ((file = this.files[0])) {
		            	var sizeKB = Math.round(file.size / 1024);		            
		            	/*	
		            	var tempvalue="";
		            	
		            	for (a in temp ) {
		            	    var tempvalue=temp[a]+"|"+tempvalue;
		            	}
		            	
		             
		            	str = tempvalue.slice(0, -1);
		            	str=str.trim();
		            	alert(str +str.length);
		            	
		            	if ( (/\.("\""+str+"\"")$/i).test(file.name) ) {
		                    image = new Image();
			                image.onload = function() {
			                    alert("The image width is " +this.width + " and image height is " + this.height+" And Size as "+sizeKB +" KB");
			                    length=this.height;
			                    width=this.width;
			                    size=sizeKB;
			                    invalidFormat=0;
			                };
		                  }  
		            	else{
		            		alert("Error Occured");
		            	} */
	            	    
		                  var str2="bmp|jpeg|jpg|tiff";
		             
		         	if ( (/\.(bmp|jpeg|jpg|tiff)$/i).test(file.name) ) {
		         		
			                    image = new Image();
				                image.onload = function() {
				                    length=this.height;
				                    width=this.width;
				                    size=sizeKB;
				                    invalidFormat=0;
				                    
				                };
			                  } else {
			                   // alert('Image Format Invalid');
			                   // invalidFormat=1;
			                  } 
		                image.src = _URL.createObjectURL(file);
		            }
				 });

    	 
    	 
    	 
    	 
    	 
    	 // id=previewid is page 3 submit button to see or view image on card,vard image
    	    $("#previewid").click(function() {
    	    	 if(isIE){
    	    		 var message2 = document.getElementById ( "message2" ) ;
                     message2.style.visibility = "visible" ;
    	    		 message2.style.marginLeft='437px';
    	    		 message2.style.marginTop ='317px';
                     message2.style.height='117px';
                     saveid.style.visibility = "visible" ;
                     saveid.style.marginLeft = '315px';
                     saveid.style.marginTop  = '599px';
                     saveid.style.height='50px';
    	    	 }
    	    	 else{
    	    		 var message2 = document.getElementById ( "message2" ) ;
                     message2.style.visibility = "visible" ;
                     message2.style.marginLeft='197px';
                     message2.style.marginTop ='317px';
                     message2.style.height='117px';
                     saveid.style.visibility = "visible" ;
                     saveid.style.marginLeft = '-82px';
                     saveid.style.marginTop  = '599px';
                     saveid.style.height='50px';
    	    	 }
    	   
                  
                  var message3 = document.getElementById ( "message3" ) ;
                  message3.style.visibility = "visible" ;
                  message3.style.marginLeft='-252px';
                  message3.style.marginTop ='542px';
                  message3.style.height='117px';
    	    });
    	    
    	    
		       
		 //page 2 submit.
    	    
    	    $("#adjustimage").click(function(){
    	    	
    	     document.getElementsByClassName('cropit-preview-image')[0].style.marginTop = '37px';
    	     document.getElementsByClassName('cropit-preview-background')[0].style.marginTop = '37px';
    	     
    	     var imageMin=document.getElementById("imageMinSize").value;
		     var imageMax=document.getElementById("imageMaxSize").value;
		      
		     var heightval=document.getElementById("imageHeight").value;
		     var imageWidthval=document.getElementById("imageWidth").value;
		      
		      
    	     if(+length<heightval || +width<imageWidthval){
    	    		alert('Image pixel size is invalid it should greater than be 460x240/Độ phân giải của hình ảnh phải lớn hơn 460x240');
    	    	  }
    	     else if(+size>imageMax || +size<imageMin){
    	    		alert('Image size should be between 100 kb to 10 MB/Kích thước hình ảnh trong khoảng 100kb đến 10Mb');
    	    	}
    	     else if(+invalidFormat==1){
    	    		alert('Please select image in proper format jpg,bmp or tiff ');
    	    	}
    	     else{
    	    	var atLeastOneIsChecked = $('input[name="keepsigninchekbox"]:checked').length > 0;
    	    	
    	   		 if(atLeastOneIsChecked){
    	   			 
                   var fileText = document.getElementById ( "fileText" ) ;
	               fileText.style.visibility = "hidden" ;
	              
	              if(isSafari){
	            	  var myCanvas = document.getElementById ( "myCanvas" ) ;
		               myCanvas.style.visibility = "visible" ;
	              }
	              else{
	            	  var myCanvasmain = document.getElementById ( "myCanvasmain" ) ;
		               myCanvasmain.style.visibility = "visible" ;
	              }
	               
	               
	   			  	var loading = document.getElementById ( "abc" ) ;
	                loading.style.visibility = "hidden" ;
	                
	                var volume = document.getElementById ( "volume" ) ;
	                volume.style.visibility = "hidden" ; 
	                
	                var selector = document.getElementById ( "selectortab" ) ;
	                selector.style.visibility = "hidden" ;
	                
	                var divx = document.getElementById ( "divx" ) ;
	                divx.style.visibility = "hidden" ;
                
             
	                var adjustimage = document.getElementById ( "adjustimage" ) ;
	                adjustimage.style.visibility = "hidden" ;
                
              	    document.getElementsByClassName('cropit-preview-image-container')[0].style.visibility = 'visible';
                    document.getElementsByClassName('cropit-preview-background-container')[0].style.visibility = 'visible';
               

	                var message1 = document.getElementById ( "message1" ) ;
	                message1.style.visibility = "visible" ;
	                message1.style.marginLeft='238px';
	                message1.style.marginTop ='-53px';
	                message1.style.height='225px';
	                
	                var message2 = document.getElementById ( "message2" ) ;
	                message2.style.visibility = "hidden" ;
	                message2.style.marginTop ='317px';
	                message2.style.height='117px';
	                
	                var pagemenu = document.getElementById ( "page3menu" ) ;
	                pagemenu.style.visibility = "visible" ;
	                pagemenu.style.marginLeft='-193px';
	                pagemenu.style.height='111px';
	                pagemenu.style.marginTop ='-195px';
                
                
	                var overlayid = document.getElementById ( "overlay" ) ;
	                overlayid.style.visibility = "visible" ;
	              
	                var sizeimageid = document.getElementById ( "sizeimage" ) ;
	                sizeimageid.style.visibility = "visible" ;
	                sizeimageid.style.width='235px';
                
              	    var labelid = document.getElementById ("labelid") ;
              	    labelid.style.visibility = "hidden" ;
               
                
               
                if(isIE){
	                	 var saveid = document.getElementById ( "saveid" ) ;
	                     saveid.style.visibility = "hidden" ;
	                     saveid.style.marginLeft = '307px';
	                     saveid.style.marginTop  = '548px';
	                     saveid.style.height='50px';
	                     
	                     var rotateid = document.getElementById ( "rotateid" ) ;
	                     rotateid.style.visibility = "visible" ;
	                     rotateid.style.marginLeft ='96px';
	                     rotateid.style.marginTop ='-73px';
	                     rotateid.style.height='52px';
	                     rotateid.style.width='56px';
	                     
	                     var previewid = document.getElementById ( "previewid" ) ;
	                     previewid.style.visibility = "visible" ;
	                     previewid.style.marginLeft ='-199px';	
	                     previewid.style.marginTop = '-55px';
	                     previewid.style.height='42px';
	                     
                       
                   	   sizeimageid.style.marginTop ='-97px';
                   	   sizeimageid.style.marginLeft ='-296px';
                   
                	   var messagepage = document.getElementById ("messagePage3") ;
                	   messagepage.style.marginLeft = "458px" ;
                	   messagepage.style.marginTop = "27px" ;
                	   
                	   
                	   var messagepage = document.getElementById ("textNew") ;
                	   messagepage.style.marginLeft = "613px" ;
                	   messagepage.style.marginTop = "-135px" ;
                	
                	   var imagepage3image = document.getElementById ("imagepage3image") ;
                	   imagepage3image.style.marginLeft = "-291px" ;
                	   imagepage3image.style.marginTop = "1px" ;
                	   
                	   var imagediv = document.getElementById ("imagediv") ;
                	   imagediv.style.marginTop = "-63px" ;
                	 
                	 
                	   
                	   
                }
                else{
                	
                	  var rotateid = document.getElementById ( "rotateid" ) ;
                      rotateid.style.visibility = "visible" ;
                      rotateid.style.marginLeft ='133px';
                      rotateid.style.marginTop ='-63px';
                      rotateid.style.height='52px';
                      rotateid.style.width='56px';
                    
                    
                	  var previewid = document.getElementById ( "previewid" ) ;
                      previewid.style.visibility = "visible" ;
                      previewid.style.marginLeft ='-74px';	
                      previewid.style.marginTop = '-55px';
                      previewid.style.height='42px';
                	
                	 var saveid = document.getElementById ( "saveid" ) ;
                     saveid.style.visibility = "hidden" ;
                     saveid.style.marginLeft = '-82px';
                     saveid.style.marginTop  = '548px';
                     saveid.style.height='50px';
                     
                     
                	 sizeimageid.style.marginTop="-147px";
                     sizeimageid.style.marginLeft ='-165px';
                     message2.style.marginLeft='197px';
                	 var tab123 = document.getElementById ("tab_middle") ;
                     tab123.style.visibility = "visible" ;
                     tab123.style.width='0px';
                     tab123.style.marginLeft='62px';
                     tab123.style.height='0px';
                      
                }
               
    	    }
    	    else{
    	    	alert('Please mark the check box/Vui lòng đánh dấu chọn vào ô');
    	    }
              
    	 }
  	  });
   });
     
     
     
      $(function() {
        $('.image-editor').cropit({
          exportZoom: 2.995,
          imageBackground: true,
          imageBackgroundBorderWidth: 20,
        });

        $('.rotate-cw').click(function() {
          $('.image-editor').cropit('rotateCW');
        });
        $('.rotate-ccw').click(function() {
          $('.image-editor').cropit('rotateCCW');
        });

        $('.export').click(function() {
        	
        	  var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
			var imageData = $('.image-editor').cropit('export');
			var c;
			 if(isSafari){
           	  c = document.getElementById ( "myCanvas" ) ;
             }
             else{
           	   c = document.getElementById ( "myCanvasmain" ) ;
             }
			var ctx1 = c.getContext("2d");
			ctx1.clearRect(0,0,338,214);
			var image = new Image();
			var img11 = new Image();
			image.onload = function() {
				
					ctx1.drawImage(image,0,100,1012,636);
					ctx1.globalAlpha = 1;
					ctx1.drawImage(img11, 0, 0, 1012,636);
				
				
			};
			image.src=imageData;
			img11=document.getElementById("overlay");
      });
        
        $('.save').click(function(){
        	var url = window.location;
        	var base_url = url.protocol + "//" + url.host + "/" + url.pathname.split('/')[1]+ "/" +url.pathname.split('/')[2];
			var imgData = $('.image-editor').cropit('export');
			var file = document.getElementById('abc');
			var fileName = file.files[0];
			$(".loader").show();
			var myArray = [];
        
			myArray .push(imgData);
			document.getElementById('hiddenArray').value=myArray;
			document.getElementById('fileName').value=fileName.name.split('.').pop();
			document.getElementById('imagePage').submit();
        });
      });
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
        	if( isMobile.any() ){ 
        		if(isMobile.Android()){
         			if(parseFloat(getAndroidVersion())==5.1){
         				
	         				 var selector = document.getElementById ( "selectortab" ) ;
	                  		 selector.style.marginLeft = "-230px" ;
	                   
	                  		 var imagediv = document.getElementById ( "imagediv" ) ;
	                   		 imagediv.style.marginLeft = "200px" ;
	                  		
	                  		
	                  		 var fontvalue = document.getElementById ( "fontvalue" ) ;
	                  		 fontvalue.style.fontSize = "25px" ;
	                  		fontvalue.style.marginLeft="830px";
	                  		
	                  		/*  var myCanvas = document.getElementById ( "myCanvas" );
	               			 myCanvas.style.position="absolute";
	               			 myCanvas.style.marginLeft ='-155px';
	               			 myCanvas.style.marginTop ='-2325px';
	           			  */
		           			 var mobileview = document.getElementById ( "mobileview" );
		           			 mobileview.style.visibility = "hidden" ;
         			}
         			
         			else if(parseFloat(getAndroidVersion())==5.0){
             				 
            				 var selector = document.getElementById ( "selectortab" ) ;
                     		 selector.style.marginLeft = "-230px" ;
                      
                     		 var imagediv = document.getElementById ( "imagediv" ) ;
                      		 imagediv.style.marginLeft = "200px" ;
                     		
                     		
                     		 var fontvalue = document.getElementById ( "fontvalue" ) ;
                     		 fontvalue.style.fontSize = "25px" ;
                     		fontvalue.style.marginLeft="830px";
                     		
                     		/*  var myCanvas = document.getElementById ( "myCanvas" );
                  			 myCanvas.style.position="absolute";
                  			 myCanvas.style.marginLeft ='-155px';
                  			 myCanvas.style.marginTop ='-2450px'; */

                  			 var mobileview = document.getElementById ( "mobileview" );
	              			 mobileview.style.visibility = "hidden" ;
            			}
         			else{
	         				var selector = document.getElementById ( "selectortab" ) ;
	                  		selector.style.marginLeft = "-230px" ;
                   
		                    var imagediv = document.getElementById ( "imagediv" ) ;
		                   	imagediv.style.marginLeft = "200px" ;
                  		
                  		
	                  		var fontvalue = document.getElementById ( "fontvalue" ) ;
	                  		fontvalue.style.fontSize = "25px" ;
	                  		fontvalue.style.marginLeft="830px";
                  		
	                  		/*  var myCanvas = document.getElementById ( "myCanvas" );
	               			 myCanvas.style.position="absolute";
	               			 myCanvas.style.marginLeft ='-155px';
	               			 myCanvas.style.marginTop ='-2125px'; */
           			 
		           			 var mobileview = document.getElementById ( "mobileview" );
		           			 mobileview.style.visibility = "hidden" ;
         			}
        		}
        		if(isMobile.iOS()){
        			var iphoneornot=isIphone();
        	    	if(iphoneornot){
        	    		var versioniphone=iPhoneVersion();
            	    	if(versioniphone==4){
            	    		var myCanvasIos = document.getElementById ( "myCanvas" );
                       		myCanvasIos.style.position="relative";
                       		myCanvasIos.style.marginLeft ='15px';
                       		myCanvasIos.style.marginTop ='-656px';
            	    	}
            	    	else{
            	    		var myCanvasIos = document.getElementById ( "myCanvas" );
                       		myCanvasIos.style.position="relative";
                       		myCanvasIos.style.marginLeft ='15px';
                       		myCanvasIos.style.marginTop ='-656px';
               			    
            	    	}
        	    	}
        			 var selector = document.getElementById ( "selectortab" ) ;
               		 selector.style.marginLeft = "-230px" ;
	       			 var textNew = document.getElementById ( "textNew" );
	       			 textNew.style.marginLeft ='20px';
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
	

		     if(isOpera ){
		                //alert('Browser 1');
			 }
		  
	         if(isFirefox ){
	            // alert('Firefox');
	              var abc = document.getElementById ( "abc" ) ;
	              abc.style.visibility = "hidden" ;
	              abc.style.width= "428px";
	              abc.style.marginTop = '-92px';
	              abc.style.marginLeft = '272px';
	            
	              var fileText = document.getElementById ( "fileText" ) ;
	              fileText.style.visibility = "visible" ;
	              fileText.style.marginLeft ="51px";
	              fileText.style.marginTop ="-29px";
	              fileText.style.width="300px";
	              fileText.style.height="32px";
	              fileText.style.border="none";
	              
	              var selectFileFireFox = document.getElementById ( "selectFileFireFox" ) ;
	              selectFileFireFox.style.visibility = "visible" ;
	              selectFileFireFox.style.marginLeft="745px";
	              
	              var textNew = document.getElementById ( "textNew" ) ;
	              textNew.style.marginLeft = "-5px" ;
	              textNew.style.marginTop="-345px";
	        }
	         
		    if(isSafari ){
		    	if( isMobile.any() ){ 
		    		
		    	}
		    	else{
		            var myCanvas = document.getElementById ( "myCanvas" );
		            myCanvas.style.marginLeft = '0px';
		           
		            var abc = document.getElementById ( "abc" ) ;
		            abc.style.visibility = "hidden" ;
		            abc.style.width= "428px";
		            abc.style.marginTop = '-92px';
		            abc.style.marginLeft = '272px';
		           
		            
		            
		            var fileText = document.getElementById ( "fileText" ) ;
		            fileText.style.visibility = "visible" ;
		            fileText.style.marginLeft ="51px";
		            fileText.style.marginTop ="-29px";
		            fileText.style.width="300px";
		            fileText.style.height="32px";
		            fileText.style.border="none";
		           
		            
		            
		            var selectFileFireFox = document.getElementById ( "selectFileFireFox" ) ;
		            selectFileFireFox.style.visibility = "visible" ;
		            selectFileFireFox.style.marginLeft="50px";
		            selectfilebutton.style.marginLeft="750px";
		           
		            
		            
		            var textNew = document.getElementById ( "textNew" ) ;
		            textNew.style.marginLeft = "-5px" ;
		            textNew.style.marginTop="-345px";
		    	}
     		}
   
		    
    	if(isIE){
    	   //alert('Internet Explorer 1');
	  	    var abc = document.getElementById ( "abc" ) ;
	        abc.style.visibility = "hidden" ;
	        abc.style.width= "428px";
	        abc.style.marginTop = '-92px';
	        abc.style.marginLeft = '272px';
        
	        var fileText = document.getElementById ( "fileText" ) ;
	        fileText.style.visibility = "visible" ;
	        fileText.style.marginLeft ="42px";
	        fileText.style.marginTop ="-22px";
	        fileText.style.width="300px";
	        fileText.style.height="32px";
	        fileText.style.border="none";
	        
	        var selectFileFireFox = document.getElementById ( "selectFileFireFox" ) ;
	        selectFileFireFox.style.visibility = "visible" ;
	        selectFileFireFox.style.marginLeft="745px";
          
         }
	    if(isChrome){
	         // alert('Google Chrome');
	       } 
       }
        
        
        
       window.onload = codeAddress;
        
        
        function ChangeText(oFileInput, sTargetID) {
     	   
    	    document.getElementById(sTargetID).value = oFileInput.value;
    	}
        
        
        function iPhoneVersion() {
      	  var iHeight = window.screen.height;
      	  var iWidth = window.screen.width;
      	  if (iWidth === 320 && iHeight === 480) {
      	    return "4";
      	  }
      	  else if (iWidth === 375 && iHeight === 667) {
      	    return "6";
      	  }
      	  else if (iWidth === 414 && iHeight === 736) {
      	    return "6+";
      	  }
      	  else if (iWidth === 320 && iHeight === 568) {
      	    return "5";
      	  }
      	  else if (iHeight <= 480) {
      	    return "2-3";
      	  }
      	  return 'none';
      	}

        
      	function isIphone() {
      	  return !!navigator.userAgent.match(/iPhone/i);
      	}
      	
      	
      	
        function getAndroidVersion(ua) {
            ua = (ua || navigator.userAgent).toLowerCase(); 
            var match = ua.match(/android\s([0-9\.]*)/);
            return match ? match[1] : false;
        };

        
        
        </script>
	
	 
  </body>
  
  
  
  <style>
  /* Basic Properties --------------------------------------------- */
  
#selectFileFireFox{
margin-top: -806px;
width: 150px;
height: 38px;
opacity: 0;

}


      .headerText {
			color: #008848;
			font-family: VPBank;
			font-size: 100%;
			margin-left: 100px;
			text-align: left;			
		  }

		  .normalText {
			font-family: VPBank;
			font-size: 80%;
			margin-left: 120px;
			text-align: left;			
			color: #000000;
			 line-height: 1.3;
		  }
		  
		  .normalText {
			font-family: VPBank;
			font-size: 80%;
			margin-left: 120px;
			text-align: left;	
			color: #000000;	
			 line-height: 1.3;
		  }
		  
		  .warning {
			width: 12px;
			height: 12px;
			border-radius: 50%;
			font-size: 10px;
			color: #fff;
			line-height: 12px;
			text-align: center;
			background: #008848;
			margin-top: 2px;
		  }
		  
		  .button {
			background-color: #008848; /* Green */
			border: none;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			border-radius: 15px;
		  }
    
	      .cropit-preview {
	        
	        background-size: cover;
	        border: 0px solid #ccc;
	        border-radius: 3px;
	        margin-top: 7px;
	        width: 338px;
	        height: 214px;
			
	      }
		.cancel
		{
		    display:block;
		    position:relative;
		    top:3px;
		    right:2px;
		    color:black;
		    height:30px;
		    width: 15px;
		    font-size:30px;
		    text-decoration:none;
		    text-align:center;
		    font-weight:bold;
		}
      .cropit-preview-image-container {
        cursor: move;
		opacity: 0.5;
		z-index: 2;
		
      }

      .cropit-preview-background {
        opacity: 0.2;
        cursor: auto;
		z-index: 2;
		
      }

      .image-size-label {
        margin-top: 10px;
      }

      input, .export {
        /* Use relative position to prevent from being covered by image background */
        position: relative;
        z-index: 1;
        display: block;
      }

      button {
        margin-top: 10px;
      }
	  #overlay {
		 position:relative;
		  height:100px;
		   width:100px;
		   top:0;
		   left:0;     
		}

	::-webkit-file-upload-button {
	 margin-left: 378px;
	    margin-top: -8px;
	    position: relative;
	    z-index: 20;
	    width: 143px;
	    height: 33px;
	     opacity: 0;
	}
	
	
	input[type=range]::-ms-track {
/*example */
width: 350px;height: 10px;
background: transparent;
border-color: transparent;
border-width: 6px 0;
color: transparent;
}

input[type=range]::-ms-fill-upper {
background: gray;
border-radius: 6px;
}
input[type=range]::-ms-fill-lower {
background: gray;
border-radius: 6px;
}

	input[type=range]::-webkit-slider-runnable-track {
    width: 300px;
    height: 10px;
    background: #ddd;
    border: none;
    border-radius: 3px;
}

	input[type='range']::-webkit-slider-thumb {
	    -webkit-appearance: none !important;
	    background-color: #E9E9E9;
	    border: 1px solid #CECECE;
	    height: 31px;
	    width: 15px;
	    border-radius: 1px;
	}
	
	
	
	#box1 {
	  width:400px;
	  height:300px;
	  border-style: solid;
	  border-width: 2px;
	}
	canvas {
	    max-width: 100%;
	    max-height: 100%;
	}
	input[type="file"] {
      -moz-opacity="0"; 
       
}

body {
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #363636;
	line-height: 1.5em;
	background-color: transparent;
}

p {
	padding-bottom: 14px;
}
p.upload
{
	padding-bottom: 0px;
	width: 600px;
	margin-top:0px;
}
p.small
{
	padding-top: -20px;
	line-height: 90%;
}

img {
	border-width: 0px;
	border-style: none;
}

hr {
	border-top: 1px solid #7B88A4;
	height: 0px; /* Win IE fix */
}

em {
	font-weight: bold;
	font-style: normal;
	color: black;
}


/* Page Elements --------------------------------------------- */

#page {
	margin: 0 auto;
	padding: 0 10px;
}

#content {
	width: 750px;
	margin: 23px 0px -22px 129px;
        padding: 57px;
}

#content_main {
	width: 630px;
    margin: 0px;
    padding: 0px 60px;
    background: url(../images/main_bg.png);
    height: 377px;
    margin-left: -190px;
    margin-top: -183px;
    position: absolute;
	z-index: 3;
}

#content_bottom {
	width: 750px;
	margin: 0 0 0 1px;
	padding: 0;
	height: 17px;
	background: url(../images/main_bottom_bg.png) top no-repeat;
	margin-top: 181px;
    margin-left: -123px;
	    visibility: hidden;
}

#flash {
	width: 750px;
	height: 450px;
	margin: 0px;
	padding: 0px;
}


/* ------------ Tab ------------ */

#content_tab {
	margin: 0px;
	padding: 0;
	width: 750px;
}

#tab_top {
	margin: 0;
	padding: 0 0 0 69px;
	background: url(../images/tab_top_bg.png) bottom no-repeat;
	height: 35px;
	margin-left: -343px;
    margin-top: 3px;
    top: 46px;
    width: 982px;
    
    position: absolute;
}

#tab_middle {
    clear: both;
    margin: 81px;
    padding: 0;
    background: url(images/tab_middle_bg.png) no-repeat;
    height: 60px;
    margin-left: 286px;
	margin-top: -81px;
}
#tab_bottom {
	
    margin: 120px;
    padding: 30px;
    background: url(../images/tab_bottom_bg.png) top no-repeat;
    height: 18px;
    width: 693px;
    margin-left: -192px
}

#tab_design {
	float: left;
	height: 30px;
	width: 222px;
	text-align: center;
}

#tab_upload {
	float: left;
	height: 30px;
	width: 222px;
	text-align: center;
}

#ssg_logo {
	float: right;
	width: 112px;
}

#tab_back {
	float: left;
	padding: 0 0 0 6px;
}

#tab_uploadform, #tab_verifyform {
	float: left;
	padding: 0px 0 0 30px;
}

.active_tab {
	font-size: 15px;
	font-weight: 600;
	padding: 8px 0 0 0;
	margin: 0;
	background: url(../images/tab_active_bg.png) no-repeat;
}

.active_tab a {
	color: #000000;
}

.inactive_tab {
	color: #cccccc;
	font-size: 14px;
	font-weight: normal;
	padding: 8px 0 0 0;
	margin: 0;
	background: url(../images/tab_inactive_bg.png) no-repeat;
}

.inactive_tab a {
	color: #363636;
}

#lbTabBack
{
	padding-left:20px;
	font-weight:bold;
	font-size:11px;
}

/* Email Capture ----------------------------*/

#verifyContainer
{
	width:650px;
	height:285px;
	overflow-x:hidden;
	overflow-y:auto;
}

#dCompetitionCapture
{
	margin:10px 0;
}

#divTermsAndConditions
{
	height:30px;
}


#dEmailCapture
{
	width:410px;
	margin:10px 0;
}

#tab_verifyFormContent
{
	width:603px;
}

#lbVerifyFormText
{
	float:left;
	width:400px;
	margin-top:15px;
}

#btSubmit {
	background-image:url(../images/bt_submit.png);
	background-repeat:no-repeat;
	background-position:top center;
	height:35px;
	width:140px;
	border: none;
	font-size:12px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight:bold;
	color:Black;

	float:right;
	margin-top:15px;
	cursor:pointer;
}


#competitionCapture
{
    clear:both;
}

/* Custom data capture --------------------------------- */

.DataCaptureControl_Table
{
	width:630px;
}

.DataCaptureControl_Table tr, .DataCaptureControl_Table td
{
	height:20px;
	padding:0;
	margin:0;
}

#dValidationMessages
{
	margin:10px 0 0;
}

.NumericInputBox
{
}

.MandatoryMarker
{
    margin-left:5px;
}

.OutlinedBox
{
	border:solid 1px red;	
}

.MandatoryMarker_Highlighted
{
    margin-left:5px;
    color:red;
}

.LabelColumn  
{
    width:220px;
}

.ControlColumn  
{
    width:300px;
	text-align:left;
}

/* Anchors --------------------------------------------- */

a {
	color: #24418f;
	text-decoration: none;
}

/* Character Styles --------------------------------------------- */

cite {
	font-weight: normal;
	font-style: italic;
	color: #666666;
}

#btnUpload {
	width: 80px;
	height: 25px;
}

#filUploadedImage {
	height: 25px;
}

/* Headings --------------------------------------------- */

h1 {
	color: #000000;
	font-size: 20px;
	font-weight: normal;
}

#content_tab h1 {
	font-size: 18px;
	font-weight: normal;
	padding: 8px 0 0 0;
	margin: 0;
}

h2 {
	color: #000000;
	font-size: 18px;
	font-weight: normal;
}

h3 {
	color: #24418f;
	font-size: 14px;
	font-weight: bold;
	margin: 0px;
}

h4 {
	color: black;
	font-size: 14px;
	font-weight: normal;
	margin: 0px;
}

.ErrorMessage {
	color: red;
}

/* Basic List --------------------------------------------- */

ul, ol {
	margin: 0;
	padding: 0 0 0 15px;
}

li {
	padding: 0px;
	margin-bottom: 5px;
}

li ul {
	margin-top: 8px;
	margin-bottom: 0px;
	padding-bottom: 4px;
}


/* --------Demo Terms and Conditions ------------ */

#dTermsAndConditions
{
	position:absolute;
	top:150px;
	left:150px;
	width:450px;
}

#dTermsAndConditions div
{
	padding:10px;
	font-size:10pt;
	background-color:#fff;
	border:solid 1px #ccc;
}

#dTsAndCsOverlay
{
	height:100%;
	width:100%;
	position:absolute;
	left:0;
	top:0;
}

#dTermsAndConditions div #closeAnchor
{
	float:right;
}
#dTermsAndConditions div h3
{
	float:left;
}

#dTermsAndConditions div hr
{
	clear:both;
}

#dTsAndCsOverlay #OverLay
{
	background-color:#000;
	height:100%;
	width:100%;
	top:0;
	left:0;
	-moz-opacity:.50; 
	filter:alpha(opacity=50); 
	opacity:.50;
}


  
  </style>
  
  
  <script>
  
  </script>
  
  
</html>
