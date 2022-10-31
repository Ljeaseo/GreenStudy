/**
 * 
 */

/**
 * 
 */

//결제
$(document).on("click","#cartpayment",function(){
	
	alert("Payment function not added");
	
});


//장바구니 담기
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
//장바구니 삭제
$(document).on("click","#cartremove",function(){
	
	var cart_cnt=$("#cart_cnt").val();

	cartremove(cart_cnt);
});

//후기 쓰기
$(document).on("click","#add_commemt",function(){
	
	var user_emailValue=$("#user_email").val();
	
	if(user_emailValue === ""){
		alert("Please log in first");
	}
	else{
   		var guitar_noValue=$("input[name=g_no]").val();
   		
	
		//alert("aa");
		
		var commemtValue=$("#commemt_content").val();
		var user_emailValue=$("#user_email").val();
		
		add_commemt({guitar_no:guitar_noValue,commemt_content:commemtValue,user_email:user_emailValue});
	}
	
});
//qna 쓰기
$(document).on("click","#add_qna",function(){
	
	var user_emailValue=$("#user_email").val();
	
	if(user_emailValue === ""){
		alert("Please log in first");
	}else{
   		var guitar_noValue=$("input[name=g_no]").val();
	
	

   		var qnaValue=$("#qna_content").val();
   		var user_emailValue=$("#user_email").val();
   		
   		add_qna({guitar_no:guitar_noValue,qna_content:qnaValue,user_email:user_emailValue});
	}
});


//후기 삭제
$(document).on("click","#comment_remove",function(){
	

	var delete_permission_comment = $(this).text("#delete_permission_comment");
	var user_emailValue=$("#user_email").val();
    alert(delete_permission_comment);
	
//	if(user_emailValue == ""){
//	alert("Please log in first")
//	}
//	else if(delete_permission_comment == user_emailValue){
//		var commemt_cno=$("#commemt_cno").val();
//		
//		commentremove(commemt_cno);
//	}
//	else{
//		alert("You do not have permission");
//
//	}
});


//qna 삭제
$(document).on("click","#qna_remove",function(){
	
	var delete_permission_qna = $("#delete_permission_qna").val();
	var user_emailValue=$("#user_email").val();
	
	if(user_emailValue == ""){
		alert("Please log in first")
		}
	else if(delete_permission_qna == user_emailValue){
		var qna_qno=$("#qna_qno").val();
		
		qnaremove(qna_qno);
	}else{
		alert("You do not have permission");
	}
});

function in_cart(cartvo){
	
	$.ajax({
		type:"post",
		url:"/cartin/new",
		data:JSON.stringify(cartvo),
		contentType:"application/json; charset=utf-8",
		success: function(result){
			if(result=="SUCCESS"){
				alert("I added an item to my shopping cart");
				location.reload();
			}else{
				alert("fales");
			}
		}
	})	
	
};


function cartremove(cart_cnt){
	console.log(cart_cnt);
	$.ajax({ 
		type:"delete",  
		url:"/cartin/remove/"+cart_cnt,

		success:function(result){
			if(result=="success"){
				alert("You have removed a product from your shopping cart");
				location.reload();
			}
		}
	})
}

function add_commemt(commentvo){
	
	$.ajax({
		type:"post",
		url:"/commemtwrite/new",
		data:JSON.stringify(commentvo),
		contentType:"application/json; charset=utf-8",
		success: function(result){
			if(result=="SUCCESS"){
				alert("Review completed");
				location.reload();
			}else{
				alert("Failed to write a review");
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
				alert("Q&A completed");
				location.reload();
			}else{
				alert("Failed to write a QNA");
			}
		}
	})	
};


function commentremove(commemt_cno){
	console.log(commemt_cno);
	$.ajax({ 
		type:"delete",  
		url:"/comment/remove/"+commemt_cno,

		success:function(result){
			if(result=="success"){
				alert("Review has been deleted");
				location.reload();
			}
		}
	})
}

function qnaremove(qna_qno){
	console.log(qna_qno);
	$.ajax({ 
		type:"delete",  
		url:"/qna/remove/"+qna_qno,

		success:function(result){
			if(result=="success"){
				alert("Q&A has been deleted");
				location.reload();
			}
		}
	})
}




function doDisplay(){ 	
    

    var noitemli = document.getElementById("noitemli"); 	
    var paymentli = document.getElementById("paymentli");
    
    
    if(document.getElementById("cart_cnt")){
    	paymentli.style.display = 'block'; 
    	noitemli.style.display = 'none'; 
 
    }
    else{ 		
    	paymentli.style.display = 'none'; 
    	noitemli.style.display = 'block'; 		
    	
    } 
}











