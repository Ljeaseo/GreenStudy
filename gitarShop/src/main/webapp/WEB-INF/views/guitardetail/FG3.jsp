<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/guitardetail.css">

<!-- JavaScript -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/guitardetail.js"></script>

<title>Insert title here</title>
</head>

<body>
<!-- 헤더 -->
<div class="header">
	<div class="mainpage_logo">
		<a href="/">
		<img src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
		</a>
	</div>

	<div class="search_box">
		<input type="text" placeholder="search">
		<button><img src="${pageContext.request.contextPath}/resources/img/lens200.png"></button>
	</div>
	<div class="shopping_basket_box">
		<button><img src="${pageContext.request.contextPath}/resources/img/basket.png"></button>
	</div>
	<div class="login_box">
		<button><img src="${pageContext.request.contextPath}/resources/img/profile.png"></button>
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
			<c:choose>
				<c:when test="${sessionScope.login==null}">
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
					<button class="facebook">facebook</button>
					<button class="google">google</button>
					</div>					
				</div>
				</c:when>
				
				
				<c:otherwise>
				<div class="login_modalBox_content"> 
				<div>
				<div>
				<h1>welcome back!</h1>
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


	
</div>










<div class="container">
	<div class="guitar_menu">
		<div class="FG_Lines">
			<h4>FG <span style="color:red;">L</span>ines</h4>
			<ul>
				<li>
					<a href="/FG3">FG3</a>
				</li>
				<li>
					<a href="/FGX3">FGX3</a>
				</li>
				<li>
					<a href="/FG5">FG5</a>
				</li>
				<li>
					<a href="/FGX5">FGX5</a>
				</li>	
			</ul>
		</div>
		
		<div class="FS_Lines">
			<h4>FS <span style="color:red;">L</span>ines</h4>
			<ul>
				<li>
					<a href="/FS3">FS3</a>
				</li>
				<li>
					<a href="/FSX3">FSX3</a>
				</li>
				<li>
					<a href="/FS5">FS5</a>
				</li>
				<li>
					<a href="/FSX5">FSX5</a>
				</li>	
			</ul>
		</div>
	</div>
	<div class="detail_box">
		<div class="detail_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/FG3.jpg">
		</div>
		<div class="detail_box_content">
			<h3>FG3</h3>
			<h5>$1,338.60</h5>
			<div class="detail_box_content_span">
			<span>The original Yamaha FG body delivers a full, punchy low end,<br>
			well-suited for strumming and flatpicking, and 1960s aesthetics and<br> 
			modern craftsmanship culminate over 50 years of Yamaha guitar development.
			<br>
			<br>
			<br>
			</span>
			<ul>
				<li>Scalloped FG Bracing Provides Warm, Powerful Tone with Deep Lows and Rich Harmonics</li>
				<li>Acoustic Resonance Enhancement (A.R.E.) Treatment Imparts the Sound and Sustain of Aged Wood</li>
				<li>All-Solid Construction with a Sitka Spruce Top, Mahogany Back and Sides</li>
				<li>Ebony Fingerboard and Bridge</li>
				<li>Hard Bag Included</li>
			</ul>
			</div>
			
			<div class="detail_box_content_button">
				<button>shopping basket</button>
				<button id="left_button">Buy now</button>
			</div>
		</div>
	</div>
		<div class="detail_more_img">
			<img id="img_1" src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_1.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_2.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_9.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_10.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_11.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_12.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_13.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_15.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FG3_16.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/red_spec.jpg">
		</div>	
</div>
<div class="detail_more_service">
	<ul>
		<li>상품 설명</li>
		<li>상품 후기</li>
		<li>상품 Q&A</li>
		<li>배송/교환/반품 안내</li>
	</ul>
</div>

<div class="table_review">
	<table>
	<caption>상품후기</caption>
	<thead>
		<tr>
			<th>후기</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<td>wwwwwwwwww</td>
			<td>123456</td>
			<td>1/1</td>
		</tr>
		<tr>
			<td>wwwwwwwwww</td>
			<td>123456</td>
			<td>1/1</td>
		</tr>
	</tbody>	
	</table>
</div>

<div class="table_qna">
	<table>
		<caption>상품Q&A</caption>
		<thead>
		<tr>
			<th>Q&A</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
		</thead>
	
		<tbody>
		<tr>
			<td>wwwwwwwwww</td>
			<td>123456</td>
			<td>1/1</td>
		</tr>
		<tr>
			<td>wwwwwwwwww</td>
			<td>123456</td>
			<td>1/1</td>
		</tr>
		</tbody>	
	</table>
</div>

<div class="change_img">
	<h3>교환 | 반품 | 환불 안내</h3>
	<img src="${pageContext.request.contextPath}/resources/img/교환_반품_환불.PNG">
</div>

<!-- 푸터 -->
<div class="footer">
	<div class="footer_logo">
		<a href="#">
		<img src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
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