/**
 * 
 */

// $(document).ready(function(){
    
    //----1번 ---//
    /* 1. 매개변수가 없는 경우 - html에 있는 값을 가지고 오는 경우
          val()
       2. 매개변수가 한개 있는 경우 - html에 없는 값을 줘야 하는 경우
          val(10)
          
    */

//   $("#plus").on("click",function(){
//     // 갯수를 입력하는 텍스트상자를 선택한다.
//     // 더하기버튼을 클릭할 때마다 quantity 변수에 수량을 저장
// let quantity = Number($("#quantity").val())
// // 갯수를 1씩 증가시켜서 갯수입력란에 셋팅한다.
// $("#quantity").val(quantity + 1)
// })

// // - 버튼을 선택한 후 마이너스 버튼을 클릭하면
// $("#minus").on("click",function(){
//     // 갯수를 입력하는 텍스트상자를 선택한다.
//     // 마이너스버튼을 클릭할 때마다 quantity 변수에 수량을 저장
// let quantity = Number($("#quantity").val())
// // 마이너스를 눌렀을때,  값은 1보다 작아지지 않는다.
// if(quantity==1){ $("#quantity").val(1);
// }else{$("#quantity").val(quantity - 1);
// }
// // 갯수를 1씩 감소시켜서 갯수입력란에 셋팅한다.
// // $("#quantity").val(quantity - 1);      
// })

    
    //----2번----//
    
    //each

    //$(this)
    
    
    //버튼태그를 선택 => 클릭 이벤트 연결
    $(document).ready(function(){
    $("button").on("click",function(){
        
          var arr = [];
         // 속성선택자 : $("태그명[속성='값']") => 함수에서 배열로.
         // input태그 중 속성이 checkbox인 것 중에서 체크된것만(:checked) 선택
         $("input[type='checkbox']:checked").each(function(){      //each -> 반복문 (선택자 수 만큼)
             // 사용자가 선택한 것($(this)에 대한 값을 가져오기)
             //console.log($(this).val());
             arr+="<h1>"+$(this).val();+"</h1>"
          
             $("p").html(arr);

            
         })
     })
    })
   //----3번----//
  
//    // textarea태그 선택
//    let content=$("textarea");
//    // textarea태그에 keyup이벤트(키보드를 누를때마다)연결(on) 
//    content.on("keyup",function(){
//         // textarea태그에 입력한 값을 가져와서(val()) 글자수를 세어(length)보자.
//         //console.log(content.val().length);
//         $("span").html(content.val().length);
//     })


// })

//------4번 --------//

/* 4-1번
$(document).ready(function(){
    let num1=$("#num1")
    let num2=$("#num2")
    let result=$("#result")

    $("#btn1").on("click",function(){
        result.val(Number(num1.val())+Number(num2.val()));
    })
   
   */

/* 4-2번
$("select").on("change",function(){
    $("#result2").html($("#price").val()*$("select").val());
           
})
*/

// $("#btn2").on("click",function(){
//     //input태그 중 type속성의 값이 checkbox인 것 중에서 
//     //체크된 것만 선택하자.(속성선택자 -> 태그명[속성=값])
//     var total = 0; 
//     $("input[type='checkbox']:checked").each(function(){
//           total+=Number($(this).val());
//       })
//       $("#result3").html(total);
// })

// })

// //--------------5번----------

// $(document).ready(function(){
//     //로그인 버튼을 submit했을때
//     $("form").on("submit",function(){
       
//         $("#idmsg").html("")
//         $("#pwmsg").html("")
       
       
//         //아이디 입력 여부 체크
//         if($("#id").val()==""){
//              $("#idmsg").html("아이디를 입력하세요.")
//              //서버로 id값을 보내지 마라
//              return false;
//         }
//        //비밀번호 입력 여부 체크
//         else if($("#pw").val()==""){
//              $("#pwmsg").html("비밀번호를 입력하세요.")
//              return false;
//         }
//     })
// })
