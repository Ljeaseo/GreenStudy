<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sing-up</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&family=Noto+Sans:wght@200&display=swap" rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/singup.css">


<!-- JavaScript 주소입니다. -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/singup.js"></script>


</head>
<body>
<!-- 헤더 -->
<div class="header">
	
		<a href="/">
		<img src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
		</a>
	
</div>

<form action="/memberinfoPost" method="post" id="joinform">
		<div class="modal_signup">
			<div class="signup_bg"></div>
			<div class="signup_modalBox">
				<div class="signup_modalBox_content">
					<h1>Please sign up <span style="color: red;">H</span>ere</h1>
					
					<p>E-mail<span style="color:red;">*</span ><span id="error_msg_account_email" class="err_password_class" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					
					<input type="text" id="account_email" placeholder="Enter email address" name="user_email">
					
					<p>Password<span style="color:red;">*</span ><span id="error_msg_account_password" class="err_password_class" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					
					<input type="password" id="account_password" placeholder="Enter password (8-20 characters)" name="user_password">
					
					<p>First Name<span style="color:red;">*</span ><span id="error_msg_account_firstname" class="err_password_class" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					
					<input type="text" id="account_firstname" placeholder="Enter first name" name="user_firstname">
					
					<p>Last Name<span style="color:red;">*</span ><span id="error_msg_account_lastname" class="err_password_class" style="color:red; font-size: 15px; padding-left: 10px;"></span></p>
					
					<input type="text" id="account_lastname" placeholder="Enter last name" name="user_lastname">
				</div>
				<div class="signup_modalBox_checkbox">
						<input type="checkbox" class="order_chks"><label>I am at least 18
						years old.</label><br> 
						
						<input type="checkbox" class="order_chks"><label>I agree
						to the terms of the <a href="/privacypolicy" target='_blank' style="color:red;">Privacy Policy</a>, which I have read and
						understood. </label><br> 
						
						<input type="checkbox" class="order_chks"><label>I want
						to receive updates from Yamaha Corporation    of America on the
						latest products, services and    marketing promotions. </label>
				</div>
				<div style="text-align: center;">
					<button type="submit" class="signup_modalBox_button" id="btn_singup">Sign Up to My Account</button>
				</div>
			</div>
			
		</div>
		</form>
      

</body>
</html>