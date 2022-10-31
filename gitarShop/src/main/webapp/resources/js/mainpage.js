/**
 * 
 */


$(function () {
	$('#a_menu1').click(function (){		
		$('html, body').stop().animate({ scrollTop : 860 }, 1100);		
    });
});

$(function () {
	$('#a_menu3').click(function (){
		$('html, body').stop().animate({scrollTop: 3502 }, 1100);
	});
});

$(function () {
	$('#a_menu2').click(function (){
    	$('html, body').stop().animate({scrollTop: 5150 }, 1100);
    });
});




//결제
$(document).on("click","#cartpayment",function(){
	
	alert("Payment function not added");
	
});

//장바구니 삭제
$(document).on("click","#cartremove",function(){
	
	var cart_cnt=$("#cart_cnt").val();

	cartremove(cart_cnt);
});

$(document).ready(function(){
	$('.bxslider').bxSlider({
		auto: true,
		speed: 500,
		pause: 4000,
		mode:'fade',
		autoControls: true,
		pager:true,
	});
});



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