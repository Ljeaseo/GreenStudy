<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/guitardetail.css">

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
			<img src="${pageContext.request.contextPath}/resources/img/FGX5.jpg">
		</div>
		<div class="detail_box_content">
			<h3>FGX5</h3>
			<h5>$2,651.40</h5>
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
				<button>shopping basket</button>
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