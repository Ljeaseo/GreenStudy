/**
 * 
 */
//jequery 효과

$(document).ready(function(){
// 1.기본 시각 효과
// $(선택자).메서드명()

$("#show").on("click",function(){
    
    //$(선택자).메서드명()
    $("p").show("slow",function(){
        alert("나타났습니다.")
    });
})


$("#hide").on("click",function(){
    // hide 효과로 글자를 숨기고 난뒤에 alert 효과가 나타나도록 콜백함수를 이용함.
    $("p").hide("slow",function(){
        alert("숨겼습니다.")
    });
})


$("#toggle").on("click",function(){
    // toggle = 한번 누르면 사라지고 다시누르면 나타남.
    $("p").toggle("slow",function(){
        alert(".즐.")
    });
})

$("#slidedown").on("click",function(){
    
    $("p").slideDown("slow");
})

$("#slideup").on("click",function(){
    
    $("p").slideUp("slow");
})

$("#fadeIn").on("click",function(){
    
    $("p").fadeIn();
})

$("#fadeout").on("click",function(){
    
    $("p").fadeOut();
})

})


