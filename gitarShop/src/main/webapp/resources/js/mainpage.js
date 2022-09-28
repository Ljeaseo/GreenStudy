/**
 * 
 */
$(function () {
	$('#a_menu1').click(function (){		
		$('html, body').stop().animate({ scrollTop : 860 }, 700);		
    });
});

$(function () {
	$('#a_menu2').click(function (){
    	$('html, body').stop().animate({scrollTop: 3502 }, 800);
    });
});

$(function () {
	$('#a_menu3').click(function (){
    	$('html, body').stop().animate({scrollTop: 5115 }, 800);
    });
});

$(function () {
	$('#a_menu4').click(function (){
    	$('html, body').stop().animate({scrollTop: 6980 },800);
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

  
