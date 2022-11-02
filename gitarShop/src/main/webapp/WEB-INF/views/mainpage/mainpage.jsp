<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&family=Noto+Sans:wght@200&display=swap" rel="stylesheet">

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

<title>Yamaha Red Label</title>
</head>
<body>
	<!-- 헤더 -->
	<div class="header">
		<div class="mainpage_logo">
			<a href="/"> <img
				src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
			</a>
		</div>
		<div class="header_menu">
			<ul>
				<li class="header_menu_li"><a href="#menu1" id="a_menu1">
						Product Features </a></li>
				<li class="header_menu_li"><a href="#menu3" id="a_menu3">
						RED Lines </a></li>
				<li class="header_menu_li"><a href="#menu2" id="a_menu2">
						Sound Samples </a></li>
				
			</ul>
		</div>



		<div class="shopping_basket_box">
				<a href="javascript:doDisplay()">
			<button id="open_basket">
				<img
					src="${pageContext.request.contextPath}/resources/img/basket.png"
				>
			</button>
				</a>
		</div>


<!-- 모달 장바구니 -->
		<div class="modal_basket hidden">
			<div class="basket_bg"></div>
			
			
				<div class="basket_modalBox">
					<c:choose>
					
					<c:when test="${sessionScope.login eq null}">
					<div>
					<h3><span style="color:red;">P</span>lease log in first</h3>
					</div>
					</c:when>
					
					<c:otherwise>
					<div>		
					<ul style="list-style:none; padding: 0;">
					
					<c:forEach var="cartlist" items="${cartlist}">
								
					<input id="cart_cnt" type="hidden" value="${cartlist.cart_cnt}">
					
					<li id="listli">
					<div class="cart_card">
					<div class="cart_card1">
					<img class="cartimg" src="${pageContext.request.contextPath}/resources/img/FG5.jpg">
					</div>
					<div class="cart_card2">
					<div>
					<h3>yamaha-<span>${cartlist.guitar_name}</span></h3>
					</div>
					<div>
					<h4>$<span>${cartlist.guitar_price}</span></h4>
					</div>
					</div>
					<div class="cart_card3">
					<button id="cartremove">Empty the <span style="color:red;">P</span>roduct</button>
					</div>
					</div>
					<hr>
					</li>				
					</c:forEach>	
					<li id="paymentli">
					<button id="cartpayment">make a payment</button>
					</li>
					<li id="noitemli">
					<h3 style="color:black;">Your shopping cart is <span style="color:red;">e</span>mpty</h3>
					</li>
					
					</ul>
					</div>
					</c:otherwise>				
					</c:choose>
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
			<c:choose>
				<c:when  test="${sessionScope.login eq null}">
		<form action="/" id="login" method="post" onsubmit="return loginform()">
				<div class="login_modalBox_content">
					<h1>Sign <span style="color: red;">I</span>n</h1>
					
					<p>E-mail<span style="color:red;">*</span ><span id="error_msg_email" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					
					<input class="email_input" id="user_email" type="text" name="user_email" placeholder="Enter email address">
					
					<p>Password<span style="color:red;">*</span><span id="error_msg_password" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					
					<input type="password" id="user_password" name="user_password" placeholder="Enter password (8-20 characters)">
					
					<button class="forgot_button">Forgot Password?</button>
					<button type="submit" class="singin_button">Sing In</button>
				</div>
		</form>
				<div class="account_box">
					<h1>Create an <span style="color: red;">A</span>ccount</h1>
					<button class="account_box_button" onclick = "location.href = '/singup' ">Click here to sign up</button>
				</div>
				<div class="social_login">
					<h1>Sign in or <span style="color: red;">S</span>ign Up via <span style="color: red;">S</span>ocial</h1>
					<div class="social_login_button_box">
					<button class="facebook" onclick="window.open('https://ko-kr.facebook.com/')">facebook</button>
					<button class="google" onclick="window.open('https://accounts.google.com/v3/signin/identifier?dsh=S-670272427%3A1667273705470259&continue=https%3A%2F%2Fcontacts.google.com%2F%3Fhl%3Dko&followup=https%3A%2F%2Fcontacts.google.com%2F%3Fhl%3Dko&hl=ko&passive=1209600&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AQDHYWqr7_0LOikvBuZVHQ1NoGi-BM6kAE_6wwyzmg5qtL-ZfIs1i6V-oiWS1-L_cRIak9zHOvegzQ')">google</button>
					</div>					
				</div>
				</c:when>
				
				
				<c:otherwise>
				<div class="login_modalBox_content"> 
				<div>
				<div>
				<h1><span style="color:red;">W</span>elcome back! ${sessionScope.login.user_email}!</h1>
				</div>
				<div>
				<a href="logout" style="color:black; font-size: 15px;">logout</a>
				</div>
				</div>
				</div>
				</c:otherwise>
			</c:choose>
			</div>
		</div>

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
			
			  
			  
			  
			  
			  document.querySelector("#open_basket").addEventListener("click", open_basket);
			  
			  document.querySelector(".basket_bg").addEventListener("click", close_basket);
			
			  document.querySelector("#open_login").addEventListener("click", open_login);
			 
			  document.querySelector(".login_bg").addEventListener("click", close_login);
			 
			 
			  

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
			  
			  
			  $(document).ready(function() {
					var msg = '${msg}';
	
					if(msg === "fail"){
						alert("Login failed");
					}
					if(msg === "success"){
						alert("Login succeed");
					}
					
			})
		
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
		
		
	<!-- FG Lines -->
		<div class="guitar_lines" id="menu3">
			<h1 style="background-color: white; color: black;">
				RED <span style="color: red;">L</span>ines
			</h1>
			<div class="guitar_lines_box">
				<c:forEach var="GSline" items="${GSline}">
				<div class="guitar_lines_box1">
					<a href="/${GSline.guitar_name}?guitar_no=${GSline.guitar_no}"> <img
						src="${pageContext.request.contextPath}/resources/img/FG3.jpg">
					<p style="color:black;">YAMAHA <td>${GSline.guitar_name}</td></p>
					</a>

					<h3>$<td>${GSline.guitar_price}</td></h3>
				</div>
				</c:forEach>
				
				
				<c:forEach var="GSXline" items="${GSXline}">
				<div class="guitar_lines_box2">
					<a href="/${GSXline.guitar_name}?guitar_no=${GSXline.guitar_no}"> <img
						src="${pageContext.request.contextPath}/resources/img/FGX3.jpg">
					<p  style="color:black;">YAMAHA  <td>${GSXline.guitar_name}</td></p>
					</a>

					<h3>$<td>${GSXline.guitar_price}</td></h3>
				</div>
				</c:forEach>
			</div>
			<p style="color:#C6C6C6; padding-left: 20px;">Actual product may differ from the picture</p>
		</div>
		<!-- 사운드 샘플 -->

		<div class="Sound_Samples" id="menu2">
			<h1>Sound Samples</h1>
			<div class="Sound_Samples_box">
				<div class="Sound_Samples_box1">
					<iframe 
						src="https://www.youtube.com/embed/DZ-VIj3EpOo"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Yamaha Folk Guitar Series | About FG Red Label</p>
				</div>
				<div class="Sound_Samples_box2">
					<iframe 
						src="https://www.youtube.com/embed/LCuTF1dx7-c"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Atmosfeel | Pickup and Preamp Demo</p>
				</div>
			</div>

			<div class="Sound_Samples_box">
				<div class="Sound_Samples_box1">
					<iframe 
						src="https://www.youtube.com/embed/4jMSb8HyJ8A"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Yamaha Folk Guitar Series | About FG Red Label</p>
				</div>
				<div class="Sound_Samples_box2">
					<iframe 
						src="https://www.youtube.com/embed/BNPj6SppSeM"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Atmosfeel | Pickup and Preamp Demo</p>
				</div>
			</div>

			<div class="Sound_Samples_box">
				<div class="Sound_Samples_box1">
					<iframe 
						src="https://www.youtube.com/embed/FI44WHCA4uk"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Yamaha Folk Guitar Series | About FG Red Label</p>
				</div>
				<div class="Sound_Samples_box2">
					<iframe 
						src="https://www.youtube.com/embed/mONHRm5L4Sw"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<p>Atmosfeel | Pickup and Preamp Demo</p>
				</div>
			</div>
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
				<a href="https://github.com/Ljeaseo/GreenStudy/tree/main/gitarShop" target="_blank">
				<img src="${pageContext.request.contextPath}/resources/img/git_hib_img.png">
				</a>
				<a href="https://sixth-belly-f2c.notion.site/LEE-NOTION-4dfb18bc4e9d4024b2dac4094328fc77" target="_blank">
				<img src="${pageContext.request.contextPath}/resources/img/notion_img.png">
				</a>
				<a href="https://www.instagram.com/j______s94/" target="_blank">
				<img src="${pageContext.request.contextPath}/resources/img/instagram_img.png">
				</a>
				<p style="color:white;">Lee jea-seo . personal project . YAMAHA <span style="color:red;">R</span>edline Shop!</p>
			</div>
		</div>
	</div>

</body>
</html>