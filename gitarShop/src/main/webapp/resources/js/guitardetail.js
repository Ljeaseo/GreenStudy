/**
 * 
 */


		$(document).ready(function() { 
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
			 
		})
			 
			  

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