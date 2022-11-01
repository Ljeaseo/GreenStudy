/**
 * 
 */

			  /*회원가입*/
$(document).ready(function() { 


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
			    var acpasswordJ = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/;
			  	
			    if(acpassword == ""){	
			  		$('#error_msg_account_password').text("Required");
			  		$('#error_msg_account_password').css("color","red");	
			  	}
			  	else if(acpasswordJ.test(acpassword) == false) {
			  		$('#error_msg_account_password').text("8-20 characters, one letter, number, special character");
			  		$('#error_msg_account_password').css("color","red");		
			  	}if(acpasswordJ.test(acpassword) == true){
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
    		  })
				
    		   });
			



$(document).ready(function() {
// 모든 체크박스를 클릭하면 버튼 활성화시키기
$('#btn_singup').click(function(){
	 
	var tt = $(".order_chks").length;
	var ss = $(".order_chks:checked").length;
    


    	var err_email = $('#error_msg_account_email').html();
    	var err_password = $('#error_msg_account_password').html();
    	var err_firstname = $('#error_msg_account_firstname').html();
    	var err_lastname = $('#error_msg_account_lastname').html();
    	
    	if(tt != ss && err_email == "success" && err_password == "success" && err_firstname == "success" && err_lastname == "success"){
    		alert("Please check the checkbox");
    		return false;
    	}
    	if(tt != ss || err_email != "success" || err_password != "success" || err_firstname != "success" || err_lastname != "success"){
    		alert("Please enter member information");
    		return false;
    	}
    	if(tt == ss && err_email == "success" && err_password == "success" && err_firstname == "success" && err_lastname == "success"){
    		alert("thanks sing up");
    		return true;
    	}
    
	})

});


		
