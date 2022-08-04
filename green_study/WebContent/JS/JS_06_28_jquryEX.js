/**
 * 
 */
//웹브라우저 선택한 것에 대해서 준비가 된 후 익명함수에 있는 것을 실행.
          //함수  //콜백함수
// $(document).ready(function(){
//    // id를 이용한 선택자
//    $("#header1").css("color","red",)
//    // class를 이용한 선택자
//    $(".header1").css("background-color","yellow")
//    // tag를 이용한 선택자
//    $("h1").css("font-size","20px")
//    // header3 글자색은 빨간색이고, 배경색을 파란색으로 적용)
//    $("#header3").css("color","red",).css("background-color","blue")
//    // 두가지 효과넣기 두번째 방법
//    //객체             //css 메서드
//    $("#header4").css({"color":"yellow","background-color":"red"})
// })


$(document).ready(function(){

   $("#idstr").on("blur",function(){
      let idchkre=/^[a-z]+[a-z0-9-_]{5,20}$/g;
      
      if(idchkre.test(idstr.value)){
         idchk.innerHTML=("사용가능한 아이디입니다.");
         idchk.style.color="black";
      }else if(idstr.value==""){
         idchk.innerHTML=("필수 항목입니다.");
         idchk.style.color="red";
      }
      else{
         idchk.innerHTML=("5~20자의 영문소문자,숫자와 특수문자 '-','_'만 사용가능합니다.");
         idchk.style.color="red";
      }
      
   })
   $("#pwstr").on("blur",function(){
      let pwchkre=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/;

      if(pwchkre.test(pwstr.value)){
         pwchk.innerHTML=("사용 가능한 비밀번호입니다.")
         pwchk.style.color="black";
      }else if(pwstr.value==""){
         pwchk.innerHTML=("필수 항목입니다.");
         pwchk.style.color="red";
      }else{
         pwchk.innerHTML=("최소 8 자, 하나 이상의 대문자, 소문자, 숫자 및 특수 문자를 입력해야합니다.")
         pwchk.style.color="red";
      }
      
   })
   $("#pwrestr").on("blur",function(){
      
      if(pwstr.value == pwrestr.value){
         pwrechk.innerHTML=("비밀번호가 일치합니다.");
         pwrechk.style.color="black";
      }else{
         pwrechk.innerHTML=("비밀번호가 일치하지 않습니다.");
         pwrechk.style.color="red";}
   })
   $("#mailstr").on("blur",function(){
      let mailrechk=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]*\.[a-zA-Z]{2,3}$/i;
      if(mailrechk.test(mailstr.value)){
         mailchk.innerHTML=("사용가능한 메일입니다.");
         mailchk.style.color="black";
      }else if(mailstr.value==("")){
         mailchk.innerHTML=("필수 항목입니다.");
         mailchk.style.color="red";
      }
      else{
         mailchk.innerHTML=("사용할수 없는 이메일입니다.");
         mailchk.style.color="red";
      } 
   })



})