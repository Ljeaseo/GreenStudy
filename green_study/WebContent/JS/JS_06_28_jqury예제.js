/**
 * 
 */

//  $(document).ready(function(){
//     var inp =$("input").val();
//     $(".up").on("click",function(){
//        setTimeout(function(){
//        if (inp == 99)
//        {
//           inp;
//        }
//        else{inp ++;}
//        $("input").val(inp);
//        });
//     });
//     $(".down").on("click",function(){
//        setTimeout(function(){
//        if (inp == 1)
//        {
//           inp;
//        }
//        else if(inp < 100)
//        {
//           inp--;
//        }
//        $("input").val(inp);
//        });
//     });
//  });


// $(document).ready(function(){
//    $('.__count_range input[count_range]').click(function(e){
//        e.preventDefault();
//        var type = $(this).attr('count_range');
//        var $count = $(this).parent().children('input.count');
//        var count_val = $count.val(); // min 1
//        if(type=='m'){
//            if(count_val<1){
//                return;
//            }
//            $count.val(parseInt(count_val)-1);
//        }else if(type=='p'){
//            $count.val(parseInt(count_val)+1);
//        }
//    });
// });
//--------------------------------------------------------

/*$(document).ready(function() {
    // 버튼 클릭 이벤트
    $("input[type='button']").click(function() {
      // 체크한 항목을 담을 배열 선언
      const arr = [];
      // 체크한 항목만 취득
      var hobby = $("input[name='hobby']:checked");
      $(hobby).each(function() {
          arr.push($(this).val());
      });
      
      // 변수로 다이렉트로 담을 경우에는 가장 위에 체크한 항목이 들어감
      var hobby1 = $("input[name='hobby']:checked").val();
      $("span").text(arr);
    });
  });*/
  //-=----=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-===-=-==-=-=-=-=-=-=-=--
//   $(document).ready(function() {
//     $('#test').on('keyup', function() {
//         $('#test_cnt').html("("+$(this).val().length+" / 100)");
 
//         if($(this).val().length > 100) {
//             $(this).val($(this).val().substring(0, 100));
//             $('#test_cnt').html("(100 / 100)");
//         }
//     });
// });
//================================================================================
// $(document).ready(function(){
//     // $("button").on("click",function(){
//     //     let sum=parseInt($("#wr_1").val())+parseInt($("#wr_2").val())
        
           
//     //     $("#wr_3").val(sum);
//     // })
   //---------------------------------------------------------------------------------
//     $("select").on("click",function(){
//         var num1 = Number($("#select_box").val())
//         var num2 = Number($("#money").val())
      
//         $("span").html(num1*num2)
//     })


// })

$(document).ready(function(){

    
    $("button").click(function(){
      let str = 0;
      
  $("input[type='checkbox']:checked").each(function(){ 
      str += parseInt($(this).val());
  $('#answer').html(str); 
});
   

   })
  })
