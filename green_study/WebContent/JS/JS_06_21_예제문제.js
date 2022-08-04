/**
 *
 */
/* 입력에 "안녕"이 들어가 있으면 "안녕하세요"를 출력하는 프로그램을 작성하고, 거기에 반복문을 적용해서 
계속해서 입력을 받게하고, 입력한 문장에 다양한 질문과 답변을 하는 프로그램을 만들어보세요.
("잘 있어"를 입력하면 반복문을 종료해서 벗어나게 만들어 보세요.)

var promReq = "안녕 또는 잘자를 입력하시오.(잘 있어 입력시 종료)"
var hiRes = "안녕하세요"
var hiMsg = "안녕"
var gnRes = "안녕히 주무세요"
var gnMsg = "잘자"
var endRes = "종료합니다"
var endMsg = "잘 있어"

while(true) {
   var prom = prompt(promReq)
   if(prom == hiMsg) {
      // 안녕 입력시 안녕하세요 출력
      alert(hiRes)
   } else if(prom == gnMsg){
      // 잘자 입력시 안녕히 주무세요 출력
      alert(gnRes)
   } else if(prom == endMsg){
      // 잘 있어 입력시 반복문 종료
      alert(endRes)
      break; 
   } else {alert("명시되지않은 단어입니다.")}
}*/



//2. 1~100까지 더하는 프로그램을 만들어보세요.
/*
let sum = 0;
for(let i = 1; i <= 100; i++) {
  sum = sum + i;
}

alert(sum);
*/


//3. 2번문제에 사용자에게 두 수를 입력 받아 특정한 숫자부터 
//특정한 숫자까지 더하는 프로그램을 만들어보세요.
/*
let sum1 = prompt("숫자를 입력하시오.")
let sum2 = prompt("두번째 숫자를 입력하시오.")
let sum = 0 ;
let tpm = 0;

let num1 = Number(sum1);
let num2 = Number(sum2);
let num = Number(sum);


if (num1>num2){
    tmp=num1;
    num1=num2;
    num2=tmp;
   }

for(let i = num1 ; i<=num2 ; i++){
    num = num + i;

}

alert(num);
*/



//4. 구구단 2단을 반복문으로 만들어보세요.
/*
for(let i=2; i<=2; i++){     // i<= 의 값만 바꿔주면 5번 문제도 가능
    alert(i+"단");

     for(let j=1; j<=9; j++){
       alert(i+"*"+j+"="+(i*j));
   }
}*/



//5. 구구단 2~9단까지 반복문으로 만들어보세요


for(let i=2; i<=9; i++){    
   alert(i+"단");

    for(let j=1; j<=9; j++){
      alert(i+"*"+j+"="+(i*j));
  }
}
