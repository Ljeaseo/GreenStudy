<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mainpage.css">

<!-- JavaScript -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/mainpage.js"></script>

<!-- bxclider -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
    
    $(document).ready(function(){
    	$('.slider').bxSlider({
    		auto: true,
    		speed: 500,
    		pause: 4000,
    		mode:'fade',
    		autoControls: true,
    		pager:true,
    	});
    });
    
  </script>

<style>
.bx-wrapper {
	border: 0;
	background: black;
	box-shadow: none;
	text-align: center;
	width: 100%;
	height: 100%;
}

.bx-wrapper-bx-pager {
	display: none;
}
</style>

<!-- bxclider -->

<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 -->
	<div class="header">
		<div class="mainpage_logo">
			<a href="#"> <img
				src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
			</a>
		</div>
		<div class="header_menu">
			<ul>
				<li class="header_menu_li"><a href="#menu1" id="a_menu1">
						Product Features </a></li>
				<li class="header_menu_li"><a href="#menu2" id="a_menu2">
						Sound Samples </a></li>
				<li class="header_menu_li"><a href="#menu3" id="a_menu3">
						FG Lines </a></li>
				<li class="header_menu_li"><a href="#menu4" id="a_menu4">
						FS Lines </a></li>
			</ul>
		</div>

		<div class="search_box">
			<input type="text" placeholder="search">
			<button>
				<img
					src="${pageContext.request.contextPath}/resources/img/lens200.png">
			</button>
		</div>


		<div class="shopping_basket_box">
			<button id="open_basket">
				<img
					src="${pageContext.request.contextPath}/resources/img/basket.png">
			</button>
		</div>


		<!-- 모달 장바구니 -->
		<div class="modal_basket hidden">
			<div class="basket_bg"></div>
			<div class="basket_modalBox">
				<p>You have no items in your shopping cart.</p>
			</div>
		</div>



		<div class="login_box">
			<button id="open_login">
				<img
					src="${pageContext.request.contextPath}/resources/img/profile.png">
			</button>
		</div>


		<!-- 모달 로그인 -->
		
		<div class="modal_login hidden">
			<div class="login_bg"></div>
			<div class="login_modalBox">
				<div class="login_modalBox_content">
					<h1>Sign <span style="color: red;">I</span>n</h1>
					<p>E-mail<span style="color:red;">*</span ><span id="error_msg_email" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					<input class="email_input" id="user_email" type="text" placeholder="Enter email address">
					<p>Password<span style="color:red;">*</span><span id="error_msg_password" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					<input type="password" id="user_password"
						placeholder="Enter password (8-20 characters)">
					<button class="forgot_button">Forgot Password?</button>
					<button class="singin_button">Sing In</button>
				</div>
				<div class="account_box">
					<h1>Create an <span style="color: red;">A</span>ccount</h1>
					<button class="account_box_button">Click here to sign up</button>
				</div>
				<div class="social_login">
					<h1>Sign in or <span style="color: red;">S</span>ign Up via <span style="color: red;">S</span>ocial</h1>
					<div class="social_login_button_box">
					<button class="facebook">facebook</button>
					<button class="google">google</button>
					</div>					
				</div>
			</div>
		</div>
		
		<!-- 모달 회원가입 -->
		<form action="/" method="post" id="joinform" onsubmit="return joinform()">
		<div class="modal_signup hidden">
			<div class="signup_bg"></div>
			<div class="signup_modalBox">
				<div class="signup_modalBox_content">
					<h1>Please sign up <span style="color: red;">H</span>ere</h1>
					<p>E-mail<span style="color:red;">*</span ><span id="error_msg_account_email" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					<input type="text" id="account_email" placeholder="Enter email address" name="user_email">
					<p>Password<span style="color:red;">*</span ><span id="error_msg_account_password" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					<input type="text" id="account_password" placeholder="Enter password (8-20 characters)" name="user_password">
					<p>First Name<span style="color:red;">*</span ><span id="error_msg_account_firstname" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					<input type="text" id="account_firstname" placeholder="Enter first name" name="user_firstname">
					<p>Last Name<span style="color:red;">*</span ><span id="error_msg_account_lastname" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					<input type="text" id="account_lastname" placeholder="Enter last name" name="user_lastname">
				</div>
				<div class="signup_modalBox_checkbox">
					<input type="checkbox"><label>I am at least 18
						years old.</label><br> <input type="checkbox"><label>I agree
						to the terms of the <a href="/privacypolicy" target='_blank' style="color:red;">Privacy Policy</a>, which I have read and
						understood. </label><br> <input type="checkbox"><label>I want
						to receive updates from Yamaha Corporation    of America on the
						latest products, services and    marketing promotions. </label>
				</div>
				<div>
					<button type="submit" class="signup_modalBox_button">Sign Up to My Account</button>
				</div>
			</div>
		</div>
		</form>
		<!-- 모달 Javascript -->
		<script>
			  /*장바구니*/
			  const open_basket = () => {
			    document.querySelector(".modal_basket").classList.remove("hidden");
			  }
			  const close_basket = () => {
			    document.querySelector(".modal_basket").classList.add("hidden");
			  }
			  /*로그인*/  
			  const open_login = () => {
				 document.querySelector(".modal_login").classList.remove("hidden");
			  }
			  const close_login = () => {
				 document.querySelector(".modal_login").classList.add("hidden");
			  }
			  /*회원가입*/
			  const open_signup = () => {
				 document.querySelector(".modal_signup").classList.remove("hidden");
			  }
			  const close_singup = () => {
				 document.querySelector(".modal_signup").classList.add("hidden");
			  }
			  
			  
			  
			  
			  document.querySelector("#open_basket").addEventListener("click", open_basket);
			  
			  document.querySelector(".basket_bg").addEventListener("click", close_basket);
			
			  document.querySelector("#open_login").addEventListener("click", open_login);
			 
			  document.querySelector(".login_bg").addEventListener("click", close_login);
			 
			  document.querySelector(".account_box_button").addEventListener("click", open_signup);
				 
			  document.querySelector(".signup_bg").addEventListener("click", close_singup);
			  

			  /* 로그인 정규식 */
			  $('#user_email').focusout(function(){
				  
			  	var email = $('#user_email').val();
			    var emailJ = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;

			  	
			  	if(email == ""){	
			  		$('#error_msg_email').text("Required");
			  		$('#error_msg_email').css("color","red");
			  	}
			  	else if (emailJ.test(email) == false) {
			  		$('#error_msg_email').text("This email doesn't look correct");		
			  		$('#error_msg_email').css("color","red");
			  	}
			  	if (emailJ.test(email) == true) {
			  		$('#error_msg_email').text("success");
			  		$('#error_msg_email').css("color","black");
			  	}
			  	
			  })
			  /* 비밀 번호 */
			  $('#user_password').focusout(function(){
				  
				  var password = $('#user_password').val();
				  
				  if(password == ""){
					  $('#error_msg_password').text("Required");
					  $('#error_msg_password').css("color","red");
				  }else{
					  $('#error_msg_password').text("success");
				  		$('#error_msg_password').css("color","black");
				  }
				  
			  })
			  /*로그인 버튼*/
			 
			  
			  /*회원가입*/
			  $('#account_email').focusout(function(){
				  
			  	var acemail = $('#account_email').val();
			    var acemailJ = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;

			  	
			  	if(acemail == ""){	
			  		$('#error_msg_account_email').text("Required");
			  		$('#error_msg_account_email').css("color","red");
			  	}
			  	else if (acemailJ.test(acemail) == false) {
			  		$('#error_msg_account_email').text("This email doesn't look correct");
			  		$('#error_msg_account_email').css("color","red");
			  	}
			  	if (acemailJ.test(acemail) == true) {
			  		$('#error_msg_account_email').text("success");
			  		$('#error_msg_account_email').css("color","black");
			  	}
			  	
			  })
			  
			  $('#account_password').focusout(function(){
				  
			  	var acpassword = $('#account_password').val();
			   
			  	if(acpassword == ""){	
			  		$('#error_msg_account_password').text("Required");
			  		$('#error_msg_account_password').css("color","red");	
			  	}
			  	else if(acpassword.length >= 8 || acpassword.length <= 20) {
			  		$('#error_msg_account_password').text("Must be 8-20 characters");
			  		$('#error_msg_account_password').css("color","red");		
			  	}else{
			  		$('#error_msg_account_password').text("success");
			  		$('#error_msg_account_password').css("color","black");	
			  	}
			  	
			  })
			  $('#account_firstname').focusout(function(){
				  
				  var acfirstname = $('#account_firstname').val();
				  
				  if(acfirstname == ""){
				  	$('#error_msg_account_firstname').text("Required");
				  	$('#error_msg_account_firstname').css("color","red");	
				  }else{
					$('#error_msg_account_firstname').text("success");
				  	$('#error_msg_account_firstname').css("color","black");	
				  }
				  
			  })
			  $('#account_lastname').focusout(function(){
				  
				  var aclastname = $('#account_lastname').val();
				  
				  if(aclastname == ""){
				  	$('#error_msg_account_lastname').text("Required");
				  	$('#error_msg_account_lastname').css("color","red");	
				  }else{
					$('#error_msg_account_lastname').text("success");
				  	$('#error_msg_account_lastname').css("color","black");	
				  }
				  
		
			  
    });
			  </script>
	</div>

	<!-- 이미지 슬라이드 -->
	<div class="adv">
		<ul class="slider">
			<li><img class="slider_img"
				src="${pageContext.request.contextPath}/resources/img/redlabel.jpg">
			</li>
			<li><img class="slider_img"
				src="${pageContext.request.contextPath}/resources/img/sli_2.jpg">
			</li>
			<li><img class="slider_img"
				src="${pageContext.request.contextPath}/resources/img/sli_3.jpg">
			</li>
			<li><img class="slider_img"
				src="${pageContext.request.contextPath}/resources/img/sli_4.jpg">
			</li>
		</ul>
	</div>


	<!-- 컨테이너 -->
	<div class="container">


		<!-- 제품 설명 -->

		<div class="Product_Features" id="menu1">
			<h1>Product Features</h1>
			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img
						src="${pageContext.request.contextPath}/resources/img/v_head.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Classic V-shaped headstock</h3>
					<span> This guitar retains the original<br> FG
						headstock shape adorned with Yamaha's iconic tuning fork logo. <br>
						The traditional truss rod cover is adorned with <br> "Since
						1966" (since 1966) to commemorate the first FG model.
					</span>
				</div>
			</div>


			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img
						src="${pageContext.request.contextPath}/resources/img/guitar_body.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Solid Sitka Spruce Top</h3>
					<span> Best sourced from Canada and Alaska, <br> rugged
						Sitka Spruce delivers rich midrange and low frequencies. <br>
						The sound is distinct and focused, <br> so it's especially
						good for chord strokes or fingerstyle rhythms.
					</span>
				</div>
			</div>


			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img
						src="${pageContext.request.contextPath}/resources/img/guitar_backbody.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Solid mahogany back plate and side plate</h3>
					<span> Mahogany features an instantaneous response <br>
						that contributes to a subtle, <br> woody tone with strong
						bass, <br> slower than many other tonewoods.
					</span>
				</div>
			</div>


			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img
						src="${pageContext.request.contextPath}/resources/img/nut_and_sandle.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Bone Nuts and Saddles</h3>
					<span> These top-quality Japanese instruments feature bone
						nuts and saddles.<br> This material is harder than urea, <br>
						and it transmits sound more efficiently<br> from the strings
						to the neck and body, <br> resulting in a louder, clearer
						sound.
					</span>
				</div>
			</div>


			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img src="${pageContext.request.contextPath}/resources/img/ARE.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Acoustic resonance enhancement (A.R.E)</h3>
					<span> Yamaha's proprietary Acoustic Resonance Enhancement
						(A.R.E.) <br> technology uses heat, moisture and air <br>
						pressure to accelerate the aging of wood. <br> This A.R.E.
						The process creates a rich, <br> vintage tone as if the
						instrument had been played for a long time.
					</span>
				</div>
			</div>


			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img
						src="${pageContext.request.contextPath}/resources/img/free_amp.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Atmosfeel™ 3-stage pickup and preamplifier system</h3>
					<span> The Atmosfeel™ 3-stage pickup and preamplifier system
						uses a piezo sensor <br> on the bridge to capture low
						frequencies, <br> micro lows and high frequencies using an
						exclusively newly developed thin <br> composite sheet
						soundboard transducer. <br> This creates a great plug-in tone
						that allows for a natural,<br> full sound with simple
						controls.
					</span>
				</div>
			</div>


			<div class="Product_Features_box">
				<div class="Product_Features_box_img">
					<img
						src="${pageContext.request.contextPath}/resources/img/sound_controller.jpg">
				</div>
				<div class="Product_Features_box_content">
					<h3>Simple and intuitive controls for each playing style</h3>
					<span> The Atmosfeel™ preamplifier control lets you mix the
						mic sound with a preset pickup sound.<br> A miking sound is
						particularly preferred for solo performances and chord
						accompaniment,<br> while a low blend sound is preferred for a
						distinctive <br> sound that breaks through a fingerstyle or
						band formation.<br> <br> The bass knob adjusts the
						peaking EQ. <br> The boost stage adds mid-frequency sounds
						and attenuates them lower, <br> eliminating low-frequency
						sounds that can cause problems on stage.
					</span>
				</div>
			</div>
		</div>

		<!-- 사운드 샘플 -->

		<div class="Sound_Samples" id="menu2">
			<h1>Sound Samples</h1>
			<div class="Sound_Samples_box">
				<div class="Sound_Samples_box1">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/DZ-VIj3EpOo"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Yamaha Folk Guitar Series | About FG Red Label</p>
				</div>
				<div class="Sound_Samples_box2">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/LCuTF1dx7-c"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Atmosfeel | Pickup and Preamp Demo</p>
				</div>
			</div>

			<div class="Sound_Samples_box">
				<div class="Sound_Samples_box1">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/4jMSb8HyJ8A"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Yamaha Folk Guitar Series | About FG Red Label</p>
				</div>
				<div class="Sound_Samples_box2">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/BNPj6SppSeM"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Atmosfeel | Pickup and Preamp Demo</p>
				</div>
			</div>

			<div class="Sound_Samples_box">
				<div class="Sound_Samples_box1">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/FI44WHCA4uk"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Yamaha Folk Guitar Series | About FG Red Label</p>
				</div>
				<div class="Sound_Samples_box2">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/mONHRm5L4Sw"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Atmosfeel | Pickup and Preamp Demo</p>
				</div>
			</div>
		</div>



		<!-- FG Lines -->
		<div class="guitar_lines" id="menu3">
			<h1 style="background-color: white; color: black;">
				FG <span style="color: red;">L</span>ines
			</h1>
			<div class="guitar_lines_box">
				<div class="guitar_lines_box1">
					<a href="/FG3"> <img
						src="${pageContext.request.contextPath}/resources/img/FG3.jpg">
					</a>
					<p>YAMAHA FG3</p>

					<h3>$1,338.60</h3>
				</div>
				<div class="guitar_lines_box2">
					<a href="/FGX3"> <img
						src="${pageContext.request.contextPath}/resources/img/FGX3.jpg">
					</a>
					<p>YAMAHA FGX3</p>

					<h3>$1,664.20</h3>
				</div>
			</div>

			<div class="guitar_lines_box">
				<div class="guitar_lines_box1">
					<a href="/FG5"> <img
						src="${pageContext.request.contextPath}/resources/img/FG5.jpg">
					</a>
					<p>YAMAHA FG5</p>

					<h3>$2,216.60</h3>
				</div>
				<div class="guitar_lines_box2">
					<a href="/FGX5"> <img
						src="${pageContext.request.contextPath}/resources/img/FGX5.jpg">
					</a>
					<p>YAMAHA FGX5</p>

					<h3>$2,651.40</h3>
				</div>
			</div>
		</div>

		<!-- FS Lines -->
		<div class="guitar_lines" id="menu4">
			<h1 style="background-color: white; color: black;">
				FS <span style="color: red;">L</span>ines
			</h1>
			<div class="guitar_lines_box">
				<div class="guitar_lines_box1">
					<a href="/FS3">
					<img src="${pageContext.request.contextPath}/resources/img/FS3.jpg">
					</a>
					<p>YAMAHA FS3</p>

					<h3>$1,338.60</h3>
				</div>
				<div class="guitar_lines_box2">
					<a href="/FSX3">
					<img
						src="${pageContext.request.contextPath}/resources/img/FSX3.jpg">
					</a>
					<p>YAMAHA FSX3</p>

					<h3>$1,664.20</h3>
				</div>
			</div>

			<div class="guitar_lines_box">
				<div class="guitar_lines_box1">
					<a href="/FS5">
					<img src="${pageContext.request.contextPath}/resources/img/FS5.jpg">
					</a>
					<p>YAMAHA FS5</p>

					<h3>$2,216.60</h3>
				</div>
				<div class="guitar_lines_box2">
					<a href="/FSX5">
					<img
						src="${pageContext.request.contextPath}/resources/img/FSX5.jpg">
					</a>
					<p>YAMAHA FSX5</p>

					<h3>$2,651.40</h3>
				</div>
			</div>
			<P style="color: #909090; padding: 0px 0px 40px 40px; margin: 0;">The
				colors and finishes shown may vary from those on the actual
				products.</P>
		</div>

	</div>
	<!-- 푸터 -->
	<div class="footer">
		<div class="footer_logo">
			<a href="#"> <img
				src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
			</a>
		</div>
		<div class="footer_container">
			<div class="footer_container1">
				<h4>SING UP</h4>
				<P>Get updates on our latest releases and sales</P>
				<input type="text" placeholder="ENTER EMAIL">
			</div>
			<div class="footer_container2">
				<h4>ul title</h4>
				<ul>

					<li>1833 SHOP</li>
					<li>1833 SHOP</li>
					<li>1833 SHOP</li>
					<li>1833 SHOP</li>
				</ul>
			</div>
			<div class="footer_container3">
				<h4>ul title</h4>
				<ul>
					<li>1833 SHOP</li>
					<li>1833 SHOP</li>
					<li>1833 SHOP</li>
					<li>1833 SHOP</li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>