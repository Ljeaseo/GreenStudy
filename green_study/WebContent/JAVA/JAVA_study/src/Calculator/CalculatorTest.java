package Calculator;
import java.util.Scanner;
public class CalculatorTest {
    public static void main(String[] args)  {
        
       // Calculator cal = new Calculator();        
        
        //1.리턴 없이 출력
    /* 
    cal.add(10,20);
    */
       //2.리턴을 사용한 출력
   // System.out.println(cal.add(10,20));
   Scanner sc = new Scanner(System.in);
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   /* 연습 문제 1 번 -------------------------------------------------------
   Calculator cal = new Calculator();  
   System.out.println("연산하고자 하는 두 정수값과 연산자를 입력하세요.");
   System.out.println("연산자 선택하기");
   System.out.println("1=덧셈 2=뺄셈 3=곱셉 4=나눗셈");
   int choice = sc.nextInt();
   
   if(choice == 1){
       System.out.println("숫자를 입력하세요.");
       System.out.println("a+"+"b="+cal.getAdd(sc.nextInt(),sc.nextInt()));
   }
   else if(choice == 2){
       System.out.println("숫자를 입력하세요.");
       System.out.println("a-"+"b="+cal.getSub(sc.nextInt(),sc.nextInt()));
   }
   else if(choice == 3){
       System.out.println("숫자를 입력하세요.");
       System.out.println("a*"+"b="+cal.getMul(sc.nextInt(),sc.nextInt()));
   }
   else if(choice == 4){
       System.out.println("숫자를 입력하세요.");
       System.out.println("a/"+"b="+cal.getDiv(sc.nextInt(),sc.nextInt()));
   }
   -------------------------------------------------------------------------*/
  
  /* 연습문제 2번-----------------------------------------------------------
   Calculator A = new Calculator();
  
  A.cal(sc.nextInt(),sc.nextInt());
  --------------------------------------------------------------------------*/

  //연습문제 3번-------------------------------------------------------------
/*
  Calculator Sum = new Calculator();
  
  System.out.println(Sum.solution(sc.nextInt(),sc.nextInt()));
  */
  //연습문제 4번--------------------------------------------------------------

  
  Calculator Student = new Calculator();

  System.out.println("학생이름:"+Student.name);
  System.out.println("반      :"+Student.Class+"반");
  System.out.println("번호    :"+Student.No+"번");
  System.out.println("국어점수:"+Student.kor+"점");
  System.out.println("영어점수:"+Student.eng+"점");
  System.out.println("수학점수:"+Student.math+"점");

  //----------------------------------------------------------------------------------
  //연습문제 5번
  System.out.println("총합    :"+Student.getTotal+"점");
  System.out.println("평균    :"+(String.format("%.2f",Student.getAverage))+"점");
  



}
}
