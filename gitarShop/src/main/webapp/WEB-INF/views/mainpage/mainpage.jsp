<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainpage.css">


<title>Insert title here</title>
</head>
<body>
<!-- 헤더 -->
<div class="header">
	<div class="mainpage_logo">
		<a href="#">
		<img src="${pageContext.request.contextPath}/resources/img/yamaha_redlabel_logo.png">
		</a>
	</div>
	<div class="header_menu">
		<ul>
			<li>
			<a href="#">
			Product Features
			</a>
			</li>
			<li>
			<a href="#">
			Sound Samples
			</a>
			</li>
			<li>
			<a href="#">
			FG Lines
			</a>
			</li>
			<li>
			<a href="#">
			FS Lines
			</a>
			</li>
		</ul>
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
<div class="adv">
	<img src="${pageContext.request.contextPath}/resources/img/redlabel.jpg">
</div>


<!-- 컨테이너 -->
<div class="container">

	<!-- 제품 설명 -->
	<h1>Product Features</h1>
	
	
	<div class="Product_Features">
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/v_head.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Classic V-shaped headstock</h3>
				<span>
				This guitar retains the original<br> 
				FG headstock shape adorned with Yamaha's iconic tuning fork logo. <br>
				The traditional truss rod cover is adorned with <br>
				"Since 1966" (since 1966) to commemorate the first FG model.
				</span>
			</div>
		</div>
		
		
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/guitar_body.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Solid Sitka Spruce Top</h3>
				<span>
				Best sourced from Canada and Alaska, <br> 
				rugged Sitka Spruce delivers rich midrange and low frequencies. <br> 
				The sound is distinct and focused, <br> 
				so it's especially good for chord strokes or fingerstyle rhythms. 
				</span>
			</div>
		</div>
		
		
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/guitar_backbody.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Solid mahogany back plate and side plate</h3>
				<span>
				Mahogany features an instantaneous response <br>
				that contributes to a subtle,  <br>
				woody tone with strong bass,  <br>
				slower than many other tonewoods. 
				</span>
			</div>
		</div>
		
		
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/nut_and_sandle.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Bone Nuts and Saddles</h3>
				<span>				
				These top-quality Japanese instruments feature bone nuts and saddles.<br> 
				This material is harder than urea, <br>
				and it transmits sound more efficiently<br> 
				from the strings to the neck and body, <br>
				resulting in a louder, clearer sound.
				</span>
			</div>
		</div>
		
		
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/ARE.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Acoustic resonance enhancement (A.R.E)</h3>
				<span>
				Yamaha's proprietary Acoustic Resonance Enhancement (A.R.E.)  <br>
				technology uses heat, moisture and air  <br>
				pressure to accelerate the aging of wood.  <br>
				This A.R.E. The process creates a rich,  <br>
				vintage tone as if the instrument had been played for a long time.
				</span>
			</div>
		</div>
		
		
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/free_amp.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Atmosfeel™ 3-stage pickup and preamplifier system</h3>
				<span>
				The Atmosfeel™ 3-stage pickup and preamplifier system uses a piezo sensor <br>
				on the bridge to capture low frequencies, <br>
				micro lows and high frequencies using an exclusively newly developed thin <br>
				composite sheet soundboard transducer. <br>
				This creates a great plug-in tone that allows for a natural,<br>
				full sound with simple controls.
				</span>
			</div>
		</div>
		
		
		<div class="Product_Features_box">
			<div class="Product_Features_box_img">
			<img src="${pageContext.request.contextPath}/resources/img/sound_controller.jpg">
			</div>
			<div  class="Product_Features_box_content">
				<h3>Simple and intuitive controls for each playing style</h3>
				<span>
				The Atmosfeel™ preamplifier control lets you mix the mic sound with a preset pickup sound.<br> 
				A miking sound is particularly preferred for solo performances and chord accompaniment,<br>
				while a low blend sound is preferred for a distinctive <br>
				sound that breaks through a fingerstyle or band formation.<br>
<br>
				The bass knob adjusts the peaking EQ. <br>
				The boost stage adds mid-frequency sounds and attenuates them lower, <br>
				eliminating low-frequency sounds that can cause problems on stage.
				</span>
			</div>
		</div>
	</div>
	
	
	<h1>Sound Samples</h1>
	
	<div class="Sound_Samples">
		<div class="Sound_Samples_box">
			<div class="Sound_Samples_box1">
				<iframe width="560" height="315" 
				src="https://www.youtube.com/embed/DZ-VIj3EpOo" 
				title="YouTube video player" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<p>Yamaha Folk Guitar Series | About FG Red Label</p>
			</div>
			<div class="Sound_Samples_box2">
				<iframe width="560" height="315" 
				src="https://www.youtube.com/embed/LCuTF1dx7-c" 
				title="YouTube video player" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<p>Atmosfeel | Pickup and Preamp Demo</p>
			</div>
		</div>
		
		<div class="Sound_Samples_box">
			<div class="Sound_Samples_box1">
				<iframe width="560" height="315" 
				src="https://www.youtube.com/embed/4jMSb8HyJ8A" 
				title="YouTube video player" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<p>Yamaha Folk Guitar Series | About FG Red Label</p>
			</div>
			<div class="Sound_Samples_box2">
				<iframe width="560" height="315" 
				src="https://www.youtube.com/embed/BNPj6SppSeM" 
				title="YouTube video player" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<p>Atmosfeel | Pickup and Preamp Demo</p>
			</div>
		</div>
		
		<div class="Sound_Samples_box">
			<div class="Sound_Samples_box1">
				<iframe width="560" height="315" 
				src="https://www.youtube.com/embed/FI44WHCA4uk" 
				title="YouTube video player" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<p>Yamaha Folk Guitar Series | About FG Red Label</p>
			</div>
			<div class="Sound_Samples_box2">
				<iframe width="560" height="315" 
				src="https://www.youtube.com/embed/mONHRm5L4Sw"
				title="YouTube video player" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<p>Atmosfeel | Pickup and Preamp Demo</p>
			</div>
		</div>
	</div>


</div>
<!-- 푸터 -->
<div class="footer">

</div>
</body>
</html>