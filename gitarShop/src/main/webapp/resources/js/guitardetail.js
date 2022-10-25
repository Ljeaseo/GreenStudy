/**
 * 
 */

$(document).on("click","#in_basket",function(){
	
	
	var user_emailValue=$("#user_email").val();
	
	if(user_emailValue === ""){
		alert("Please log in first");
	}
	else{
		var guitar_noValue=$("input[name=g_no]").val();
		var guitar_nameValue=$("#gi_name").val();
		var guitar_priceValue=$("#gi_price").val();
	
	in_cart({guitar_no:guitar_noValue,guitar_name:guitar_nameValue,guitar_price:guitar_priceValue});
	
	}

});




$(document).on("click","#add_commemt",function(){
	
   		var guitar_noValue=$("input[name=g_no]").val();
   		
	
		//alert("aa");
		
		var commemtValue=$("#commemt_content").val();
		var user_emailValue=$("#user_email").val();
		
		add_commemt({guitar_no:guitar_noValue,commemt_content:commemtValue,user_email:user_emailValue});
	
});

$(document).on("click","#add_qna",function(){
	
   		var guitar_noValue=$("input[name=g_no]").val();
	
	

   		var qnaValue=$("#qna_content").val();
   		var user_emailValue=$("#user_email").val();
   		
   		add_qna({guitar_no:guitar_noValue,qna_content:qnaValue,user_email:user_emailValue});
	
});


function in_cart(cartvo){
	
	$.ajax({
		type:"post",
		url:"/cartin/new",
		data:JSON.stringify(cartvo),
		contentType:"application/json; charset=utf-8",
		success: function(result){
			if(result=="SUCCESS"){
				alert("장바구니 성공");
			}else{
				alert("안됨");
			}
		}
	})	
	
};




function add_commemt(commentvo){
	
	$.ajax({
		type:"post",
		url:"/commemtwrite/new",
		data:JSON.stringify(commentvo),
		contentType:"application/json; charset=utf-8",
		success: function(result){
			if(result=="SUCCESS"){
				alert("후기쓰기 성공");
			}else{
				alert("안됨");
			}
		}
	})	
};

function add_qna(qnavo){
	
	$.ajax({
		type:"post",
		url:"/qnawrite/new",
		data:JSON.stringify(qnavo),
		contentType:"application/json; charset=utf-8",
		success: function(result){
			if(result=="SUCCESS"){
				alert("QNA쓰기 성공");
			}else{
				alert("안됨");
			}
		}
	})	
};