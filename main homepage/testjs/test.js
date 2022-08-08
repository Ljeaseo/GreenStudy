$(document).ready(function(){ 
    //익스 8~9 스크립트
    var trident = navigator.userAgent.match(/Trident\/(\d.\d)/i);
    if(trident != null){
      if(trident[1] < '6.0'){
        $(".ani").removeClass('ani');
      }
    }
    
    $('.s2_wrap > span').click(function() {
      $('.s2_wrap > span.on').removeClass("on");
      $(this).addClass("on");
      $('.s2_wrap > i.on').removeClass("on");
      $("."+$(this).data("button")).addClass('on');
      $(".content_box").attr('class','content_box');
      $(".content_box").addClass($(this).data("show"));
      $(".section02 .content").hide();
      $(".section02 .content_box ."+$(this).data("show")).show();
    });

    $('.s2_wrap > span').mouseenter(function(){
      var hover1 = $("."+$(this).data("button"));
      var hover2 = hover1.hasClass('on');
      if ( hover2 == false)
      { 
        $("."+$(this).data("button")).addClass('hover');
      }
    });

    $('.s2_wrap > span').mouseleave(function(){
      $("."+$(this).data("button")).removeClass('hover');
    });
    
    
  });