/**
 * 
 */
//jequery 효과

$(document).ready(function(){
// 2.사용자 지정 효과(애니메이션)
// $(선택자).메서드명()

 $("img").on("click",function(){
    $("img").animate({
        left:500,
        width:"+=500",
        height:"+=500",
        
    })
 })


})


