<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>FGX5</title>
</head>

<body>
<!-- 헤더 -->
<div class="header">
	<div class="mainpage_logo">
		<a href="/">
		<img src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
		</a>
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
					<div>
					<c:forEach var="cartlist" items="${cartlist}">
					
					<input id="cart_cnt" type="hidden" value="${cartlist.cart_cnt}">
					
					
					<li id="listli">
					<div class="cart_card">
					<div class="cart_card1">
					<img class="cartimg" src="${pageContext.request.contextPath}/resources/img/FG3.jpg">
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
					</div>
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
				<c:when test="${sessionScope.login eq null}">
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

<div class="container">
	<div class="guitar_menu">
		<div class="FG_Lines">
			<h4>RED <span style="color:red;">L</span>ines</h4>
			<ul>
				<li>
					<a href="/FG3?guitar_no=1"><span style="color:red;">F</span>G3</a>
				</li>
				<li>
					<a href="/FGX3?guitar_no=2">F<span style="color:red;">G</span>X3</a>
				</li>
				<li>
					<a href="/FG5?guitar_no=3"><span style="color:red;">F</span>G5</a>
				</li>
				<li>
					<a href="/FGX5?guitar_no=4">FG<span style="color:red;">X</span>5</a>
				</li>	
				<li>
					<a href="/FS3?guitar_no=5">F<span style="color:red;">S</span>3</a>
				</li>
				<li>
					<a href="/FSX3?guitar_no=6"><span style="color:red;">F</span>SX3</a>
				</li>
				<li>
					<a href="/FS5?guitar_no=7"><span style="color:red;">F</span>S5</a>
				</li>
				<li>
					<a href="/FSX5?guitar_no=8">FS<span style="color:red;">X</span>5</a>
				</li>	
			</ul>
		</div>	
	</div>
	<div class="detail_box">
		<div class="detail_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/FGX5.jpg">
		</div>
		<div class="detail_box_content">
			<h3>FG<span style="color:red;">X</span>5</h3><input type="hidden" id="gi_name" value="FGX5">
			<h5>$2,651</h5><input type="hidden" id="gi_price" value=2651>
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
				<li>Bone Nut and Saddle</li>
				<li>Made in Japan</li>
				<li>Hardshell Case Included</li>
			</ul>
			</div>
			
			<div class="detail_box_content_button">
				<button id="in_basket">shopping basket</button>
				<button id="left_button">Buy now</button>
			</div>
		</div>
	</div>
		<div class="detail_more_img">
			<img id="img_1" src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_1.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_2.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_9.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_10.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_11.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_12.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_15.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_14.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_17.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/yamaha-FGX5_18.jpg">
			<img src="${pageContext.request.contextPath}/resources/img/red_spec.jpg">
		</div>	
</div>


<div class="table_review">
	<table>
	<caption class="caption"><span style="color:red;">P</span>roduct review</caption>
		<tr>
	<!-- 후기 작성 -->
		<td colspan=5 class="user_wirtebox">
			<input type="hidden" name="g_no" value=4>
			<input type="hidden" id="user_email" value="${sessionScope.login.user_email}">
			<textarea class="qnatextarea" style="width: 860px;height: 25px;" 
			id="commemt_content" placeholder="Please enter your review"></textarea>
			<input class="wrtie_add_button" type="button" id="add_commemt" value="Write a review">
		</td>
		</tr>
	
		<tr>
			<th><span style="color:red;">N</span>o.</th>
			<th>Q&<span style="color:red;">A</span></th>
			<th>W<span style="color:red;">r</span>iter</th>
			<th>re<span style="color:red;">d</span>ate</th>
		</tr>
	
	
	<tbody>
	<c:forEach var="comment" items="${comment}">
			<input id="commemt_cno" type="hidden" value="${comment.commemt_cno}">
		<tr>
			<td class="notd">${comment.commemt_cno}</td>
			<td class="contenttd">${comment.commemt_content}</td>
			<td class="emailtd">${comment.user_email}</td>
			<td class="regdatetd">${comment.commemt_regdate}</td>
			<td class="buttontd"><button id="comment_remove">delete</button></td>
		</tr>
	</c:forEach>	
		<tr>
				<td colspan = 5 style='letter-spacing:10px' id="page">
					<c:if test="${paging.prev}">
						<a href="/FGX5?guitar_no=4&type=${paging.cri.type}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}" style="color:black;">이전</a>
					</c:if>

					<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
 						<a href="/FGX5?guitar_no=4&type=${paging.cri.type}&pageNum=${num}&amount=${paging.cri.amount}" style="color:black;">${num}</a>
					</c:forEach>
					
					<c:if test="${paging.next}">
						<a href="/FGX5?guitar_no=4&type=${paging.cri.type}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}" style="color:black;">다음</a>
					</c:if>
				</td>
			</tr>
	</tbody>	
	</table>
</div>

<div class="table_qna">
	<table>
		<caption class="caption">Product <span style="color:red;">Q</span>&A</caption>
		<!-- QNA 작성 -->
		<tr>
		<td colspan=5 class="user_wirtebox">	
			<textarea style="width: 860px;height: 25px;" id="qna_content" class="qnatextarea"
			placeholder="Please enter your Q&A"></textarea>
			<input class="wrtie_add_button" type="button" id="add_qna" value="Write a Q&A">
		</td>
		</tr>
		
		<tr>
			<th><span style="color:red;">N</span>o.</th>
			<th>Q&<span style="color:red;">A</span></th>
			<th>W<span style="color:red;">r</span>iter</th>
			<th>re<span style="color:red;">d</span>ate</th>
		</tr>
		
	
		<tbody>
	<c:forEach var="qna" items="${qna}">
	<input id="qna_qno" type="hidden" value="${qna.qna_qno}">
		<tr>
			<td class="notd">${qna.qna_qno}</td>
			<td class="contenttd">${qna.qna_content}</td>
			<td class="emailtd">${qna.user_email}</td>
			<td class="regdatetd">${qna.qna_regdate}</td>
			<td class="buttontd"><button id="qna_remove">delete</button></td>
		</tr>
	</c:forEach>
			<tr>
				<td colspan = 5 style='letter-spacing:10px' id="qnapage">
					<c:if test="${qnapaging.qprev}">
						<a href="/FGX5?guitar_no=4&qtype=${qnapaging.qcri.qtype}&qpageNum=${qnapaging.qstartPage-1}&qamount=${qnapaging.qcri.qamount}" style="color:black;">이전</a>
					</c:if>

					<c:forEach begin="${qnapaging.qstartPage}" end="${qnapaging.qendPage}" var="num">
 						<a href="/FGX5?guitar_no=4&qtype=${qnapaging.qcri.qtype}&qpageNum=${num}&qamount=${qnapaging.qcri.qamount}" style="color:black;">${num}</a>
					</c:forEach>
					
					<c:if test="${qnapaging.qnext}">
						<a href="/FGX5?guitar_no=4&qtype=${qnapaging.qcri.qtype}&qpageNum=${qnapaging.qendPage+1}&qamount=${qnapaging.qcri.qamount}" style="color:black;">다음</a>
					</c:if>
				</td>
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
				<p style="color:white;">Lee jea-seo . personal project . YAMAHA redline shop!</p>
			</div>
		</div>
	</div>


</body>
</html>