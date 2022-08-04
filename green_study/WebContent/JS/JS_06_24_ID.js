/**
 *
 */

// window.onload=function(){
//     var udi = document.getElementById("udi");
//     var text = document.querySelector("#text") 
   
//     udi.onblur = function(){

//     if (udi.value.length < 4){
//           text.innerHTML="5자 이상 입력하시오.";
//           text.style.color="red";
//     }else{
//         text.innerHTML="정상.";
//         text.style.color="green";
//     }
// }
// }
//========================================================


// window.onload= 웹브라우저가 실행되자 마자
window.onload=function(){
    // 아이디가 idchk인 것을 선택(document.querySelector("#idchk"))
    // 한 후 idchk 변수에 저장.
    var idchk=document.querySelector("#idchk") // <input type="text" id="idchk">
    // idchk에 저장되어 있는 것과 blur이벤트 연결 한 후 익명함수 안에 있는 것을 실행.
    idchk.onblur=function(){
        
        // input에 입력한 문자열을 여기로 가지고 와서 (inchk.value) idValue변수에 저장.
        var idValue=idchk.value;
        // id가 idmsg 인 것을 선택하여 idmsg변수에 저장.
        var idmsg=document.querySelector("#idmsg");
        // input에 입력한 문자열.length (입력한 문자열의 글자수)
        if(idValue.length>=5 && idValue.length<=20){
            idmsg.innerHTML="정상입니다.";
            idmsg.style.color="green";

        }else{
            idmsg.innerHTML="5~20자 이내로 입력하셔야합니다..";
            idmsg.style.color="red";
        }
    }
}



