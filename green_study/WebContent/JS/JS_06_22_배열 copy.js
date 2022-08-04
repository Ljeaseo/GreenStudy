/**
 * 배열(array0) 
 */
//a라는 이름의 배열을 선언함과 동시에 10,20,30 값을 초기화해라.
// let a = [10,20,30,40];

// // alert(a) 

// // alert(a[0])
// // alert(a[1])
// // alert(a[2])

// //alert(a[0]+a[1]+a[2])
// alert(a.length)
// let sum=0;
// for(let i=0 ; i<a.length ; i++){
//     sum+=a[i];
// }
// alert(sum);

//A학교의 학생들의 국어 점수 성적의 총점과 평균을 구하세요.
function sumave(){
let A = [52,73,100,32,57,100,31,20];

let sum = 0;
let ave = 0;
for(let i=0 ; i<A.length ; i++){
    sum+=A[i]
    ave=sum/A.length
}
alert(sum);
alert(ave);
}



