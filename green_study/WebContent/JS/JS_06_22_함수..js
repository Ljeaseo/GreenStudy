/**
 * 
 */

//javascript 내장함수
/*




*/
//javacript 사용자 정의 함수
/*
선언
function 함수명(매개변수){
함수를 이용하여 실행하고자 하는 코드.
}

======
                                                    호출부
function add(var a, var b){     --------------->    add(5,7)
        a+b;                    
}




*/

// //함수 선언(더하기를 하기 위한 함수)
// function add(a,b){
    
//     return a+b
      
// }
// // 함수 호출 
// alert(add(2,4))





//가로(밑변):3
// //세로(높이):4 일때 삼각형의 넓이를 구하는 함수를 작성하시오.

// function add(a,b){
//      return 1/2*a*b
// }

// alert(add(3,4))


// 익명 함수
// var add=function(a,b){
//         return a+ b
// }

// alert(add(5,7));

// //익명함수
// var callback=function(){
//         alert("콜백 함수 호출")

// // 콜백 함수(매개변수로 전달하는 함수)
// //callbackTest 함수 선언
// function callbackTest(callback){ 
//         //3번 반복
//         for(var i=0 ; i<3 ; i++){
//         //매개변수로 전달된 함수를 호출.
//         callback();
//     }
// }

// }
// // callbackTest 함수 호출

// callbackTest();


//-====================================================================

/*다음 코드의 실행 결과를 예측하세요.

//test라는 이름의 함수 선언
function test(a,b,c){
        alert(a)          10
        alert(a*b)        1000
        alert(a*b*c)      NaN  (Not a Number)    
        alert(c)          nudefined
}

// test() 함수 호출
test(10,100) 

다음과 같은 함수를 만들어 보세요.

1) 함수이름: power
-매개변수를 하나 넣으면 제곱해준다.(예:power(2)=4)
-매개변수를 두개 넣으면 첫 번째 매개 변수와 두번째 매개변수 제곱만큼 해준다.
(예 : power(2,3)=8)




//  function power(a,b){
        //         var result=0;
        //         if (b==0) { 
                //                 result=1;
                //                 alert(result);
                //         }
                //         else if(b==0){
                        //                 alert(a**b);        
                        //         }
                        //         else if(b){
                                //                 alert(a**b);
                                //         }else{
                                        //                 alert(a**a)
//         }
// }

// power(3);        
//----------------------------------------------------------------        

function power(a,b){
        let result=1 //결과를 저장하는 변수.
        // brk undefined이면 매개변수는 한개다.
        if(b==undefined){
                result=a*a
        }else{ // 그렇지 않으면 매개변수는 두개다.
                for(let i=1 ; i<=b ; i++){
                      result*=a;  //result=result*a;
                }
                
        }
        return result;
}

alert(power(2))
alert(power(2,3))

2) 함수 이름: multiply
-매개변수로 넣은 값을 모두 곱해준다(예 : multiply(1,2,3,4,5)=120)
*/


// function multiply(){
        //         let result=1;
        //             for(let i=0 ; i<arguments.length ; ++i){
                //                 result*=arguments[i];
                //             }
                //            return result;
                //         }
                
                
                // alert(multiply(1,2,3,4,5));

// Array 와 aguments(가변 인수) 