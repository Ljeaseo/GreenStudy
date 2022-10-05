/**
 * 
 */
$(function () {
	$('#a_menu1').click(function (){		
		$('html, body').stop().animate({ scrollTop : 860 }, 1100);		
    });
});

$(function () {
	$('#a_menu2').click(function (){
    	$('html, body').stop().animate({scrollTop: 3502 }, 1100);
    });
});

$(function () {
	$('#a_menu3').click(function (){
    	$('html, body').stop().animate({scrollTop: 5115 }, 1100);
    });
});

$(function () {
	$('#a_menu4').click(function (){
    	$('html, body').stop().animate({scrollTop: 6980 }, 1100);
    });
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

$(".signup_modalBox_button").click(function(){

		 alert("dd");
   })
})