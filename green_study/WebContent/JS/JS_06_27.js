/**
 * 
 */
/* 마우스 이벤트
click

키보드
ex(keyup, keydown)

입력양식 (input) 이벤트
blur, focus


-이벤트 연결

html, javascript 간의 이벤튼 어떻게 연결..s

1.인라인 이벤트 모델

<p onclick="이벤트명"> </p>

2.기본 이벤트
<p id="a"> </p>

document.getElementBiyId("a").onclick(){
      클릭했을 때 반응해야 되는 문장.
}

---------------------------------------------------------------

document.getElementBiyId("a").addEventListener("click",함수명){

}
function 함수명(){
    클릭했을 때 반응해야 하는 문장.
}


// 예제 !

//아이디 5~10자 이내로 입력하셔야 합니다.

//비밀번호 8~16자 이내로 입력하셔야 합니다.

//비밀번호 재확인- 위 비밀번호와 비밀번호 재황인해서 입력한 값이 같아야합니다.
*/
// window.onload=function(){
//     let idin=document.querySelector("#idin");
//         idin.onblur=function(){
//             let idValue=idin.value;
//             let idchk=document.querySelector("#idchk");

//             if(idValue.length>4 && idValue.length<11){
//                 idchk.innerHTML=("정상입력되었습니다.");
//                 idchk.style.color="green";
//             }else{
//                 idchk.innerHTML=("5~10자 이내로 입력하셔야 합니다.");
//                 idchk.style.color="red";
//             }
//     }
//     let psin=document.querySelector("#psin");
//         psin.onblur=function(){
//             let psValue=psin.value;
//             let pschk=document.querySelector("#pschk");

//             if(psValue.length>7 && psValue.length<17){
//                 pschk.innerHTML=("정상입력되었습니다.");
//                 pschk.style.color="green";
//             }else{
//                 pschk.innerHTML=("8~16자 이내로 입력하셔야 합니다.");
//                 pschk.style.color="red";
//             }
//     }
//     let psin2=document.querySelector("#psin2");
//         psin2.onblur=function(){
//             let pschk2=document.querySelector("#pschk2");

//             if(psin.value == psin2.value){
//                 pschk2.innerHTML=("위 비밀번호와 일치합니다.");
//                 pschk2.style.color="green";
//             }else{
//                 pschk2.innerHTML=("위 비밀번호와 일치 하지 않습니다.");
//                 pschk2.style.color="red";
//             }
//         }
//     let mail=document.querySelector("#mail");
//         mail.onblur=function(){
//             let mailre=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]*\.[a-zA-Z]{2,3}$/i;
//             let mailchk=document.querySelector("#mailchk");
//             if(mailre.test(mail.value)){
//                 mailchk.innerHTML=("이메일이 확인되었습니다.")
//             }else{
//                 mailchk.innerHTML=("이메일을 다시 입력해주세요.")
//             }
//         }


//     }


   // --------------------------------------------------------------------------
    window.onload=function(){
        let idin=document.querySelector("#idin");
            idin.onblur=function(){
                let idre=/^[a-z]+[a-z0-9-_]{5,20}$/g;
                let idchk=document.querySelector("#idchk");
    
                if(idre.test(idin.value)){
                    idchk.innerHTML=("정상입력되었습니다.");
                    idchk.style.color="green";
                }else{
                    idchk.innerHTML=("5~20자의 영문소문자,숫자와 특수기호(-),(_)만 사용 가능합니다.");
                    idchk.style.color="red";
                }
        }
        let psin=document.querySelector("#psin");
            psin.onblur=function(){
                let psre=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/;
                let pschk=document.querySelector("#pschk");
    
                if(psre.test(psin.value)){
                    pschk.innerHTML=("정상입력되었습니다.");
                    pschk.style.color="green";
                }else{
                    pschk.innerHTML=("최소 8 자, 하나 이상의 대문자, 소문자, 숫자 및 특수 문자를 입력해야합니다.");
                    pschk.style.color="red";
                }
        }
        let psin2=document.querySelector("#psin2");
            psin2.onblur=function(){
                let pschk2=document.querySelector("#pschk2");
    
                if(psin.value == psin2.value){
                    pschk2.innerHTML=("위 비밀번호와 일치합니다.");
                    pschk2.style.color="green";
                }else{
                    pschk2.innerHTML=("위 비밀번호와 일치 하지 않습니다.");
                    pschk2.style.color="red";
                }
            }
        let mail=document.querySelector("#mail");
            mail.onblur=function(){
                let mailre=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]*\.[a-zA-Z]{2,3}$/i;
                let mailchk=document.querySelector("#mailchk");
                if(mailre.test(mail.value)){
                    mailchk.innerHTML=("이메일이 확인되었습니다.");
                    mailchk.style.color="green";
                }else{
                    mailchk.innerHTML=("이메일을 다시 확인해주세요.");
                    mailchk.style.color="red";
                }
            }
    
    
        }
    //--------------------------------------------------------------------

    /* 
    정규식 메서드
    exec()
    test()

    정규식 플래그 문자
    g,i,m

    정규식 앵커 문자
    ^문자
    문자$

    정규식 매타 문자
    .
    [문자열]
    [^문자열]
    [문자열-문자열]

    정규식 수량 문자
    {숫자}
    {숫자,숫자}
    {숫자,}
    {,숫자} */