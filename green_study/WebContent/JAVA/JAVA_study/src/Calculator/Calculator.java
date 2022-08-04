package Calculator;
import java.util.Scanner;
public class Calculator {
   
   //1.리턴 없이 출력
   /*
   void add(int num1, int num2){
    System.out.println( num1+num2);
}
    */
   
    //2.리턴을 사용한 출력
    //int add(int num1,int num2){
      // return num1 + num2;
    //}
    //실수 와 정수 
    /*  메서드 오버로딩이 되기 위한 조건
        1.메서드명이 같아야한다.
        2.
        int add(int a, int b){
            return a+b;
        }
    double add(double a, int b){
        return a+b;
    }
    double add(int a, double b){
        return a+b;
    }
    double add(double a, double b){
        return a+b;
    }
    */


    
    
    
    
    
    
    
    
    
    
    
    
    
    // 연습 문제 1번 -------------------------------------------------------------------------------------------------//
    //1.다음과 같은 멤버변수를 갖는 Calculator클래스를 정의한 후
    // 다음과 같이 정의된 네 개의 메서드getAdd(), getSub(), getMul(), getDiv()를 추가하여 임의의 정수와
    // 연산자를키보드로 입력 받아서 처리 될 수 있게 CalculatorTest클래스를 완성하시오.(각 변수의 초기화는 임의의 값 설정)
    /*   
    int getAdd(int a, int b){
        return a+b;
    }
    int getSub(int a, int b){
        return a-b;
    }
    int getMul(int a, int b){
        return a*b;
    }
    double getDiv(int a, double b){
        return a/b;
    }
    -------------------------------------------------------------------------------------------------------------*/

    /*--------------------------------------------
     연습문제 2번 . 다음과 같은 멤버 변수 ~~~~~~~~~~~~~~~~~~~~~~(메소드 오버로딩을 참고)
    static void cal(int a, double b){
        System.out.println(a+b);
        System.out.println(a-b);
        System.out.println(a*b);
        System.out.println(a/b);
    }
     ------------------------------------------------ */  
     // 연습문제 3번 
     Scanner sc = new Scanner(System.in);
     /*
     int solution(int a, int b){
     
    int sum=0;
    int max = Math.max(a,b);
    int min = Math.min(a,b);
    for(int i=min;i<=max;i++){
         sum+=i;
        }
    return sum;
    }
    */      
//-----------------------------------------------------------------------------
//예제 4번 

String name = sc.nextLine();
int Class = sc.nextInt();
int No = sc.nextInt();
int kor = sc.nextInt();
int eng = sc.nextInt();
int math = sc.nextInt();

//-----------------------------------------------------------------------------
//예제 5번

int getTotal = kor+eng+math;
float getAverage = getTotal/3f;






}





