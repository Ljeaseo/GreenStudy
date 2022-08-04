import java.util.Arrays;
import java.util.Scanner;
public class java_class_0706_연습문제 {
    public static void main(String[] args)  {
       
        //1.for문을 이용하여 1~100까지의 정수 중에서 3의 배수의 총합을 구하는 코드를 작성해보자.

    //     int sum = 0;
        
        
    //     for(int i=1;i<100;i++){
             
    //         if(i%3==0){
                
    //             sum += i;
                
    //         }
    //     }
        
    //     System.out.println(sum);

    //     //2. while문과 Math.random()메소드를 이용해서 두개의 주사위를 던졌을때 
    //     //나오는 눈이 아래의 형태로 출력하고, 눈의 합이 5가 아니면 계속 주사위를 던지고,
    //     //눈의 합이 5이면 실행을 멈추는 코드를 작성해보자.

        
    //     int sum = 0;

        
    //     while(true){
            
    //         int num1 = (int)(Math.random()*6) + 1;
    //         int num2 = (int)(Math.random()*6) + 1;
    //         System.out.println((num1)+"+"+(num2));
    //         sum=num1+num2;
    //         System.out.println(sum);    

    //         if(sum == 5){
    //             break;
    //         }    
    //     }
        
        
    //     //3. 거스름돈을 몇개의 동전으로 지불할 수 있는지를 계산하는 문제이다
    //     //변수 money의 금액을 각각 지폐와 동전이 몇개가 필요한지 계산해서 출력하라.
    //     //(단, 가능한  적은 수의 지폐와 동전으로 거슬러 주어야한다.)
        
        
        
        
    //     Scanner sc = new Scanner(System.in); 
        
    //     System.out.println("잔돈을 입력하세요.");
    //     int money = sc.nextInt();
    //     int c10000, c5000, c1000, c500, c100, c50, c10;
        
    //     c10000=money/10000;
    //     System.out.println("만원권"+c10000+"장");

    //     money=money%10000;

    //     c5000=money/5000;
    //     System.out.println("오천원권"+c5000+"장");

    //     money=money%5000;

    //     c1000=money/1000;
    //     System.out.println("천원권"+c1000+"장");

    //     money=money%1000;

    //     c500=money/500;
    //     System.out.println("오백원권"+c500+"개");

    //     money=money%500;

    //     c100=money/100;
    //     System.out.println("백원권"+c100+"개");

    //     money=money%100;
        
    //     c50=money/50;
    //     System.out.println("오십원권"+c50+"개");

    //     money=money%50;

    //     c10=money/10;
    //     System.out.println("십원권"+c10+"개");

    //     money=money%10;
        
        
    //     //4. 약수를 모두 찾는 수학 문제를 풀다가 지친 x는 컴퓨터의 도움을
    //     //받아 풀어보기로 하였다. 

    //     System.out.println("약수를 구할 숫자를 입력하세요.");
        
    //     int num = sc.nextInt();
    //     int nums = 0;
    //         for(int i=1; i<=num; i++){
            
        
    //         if(num%i==0){
    //             System.out.println(i);
    //         nums++;
    //         }
    //     } 
    //     System.out.println("약수의 갯수는"+nums+"개입니다.");
        
    //     //5. 홀수와 짝수의 개수를 구하는 프로그램을 만들어라.\\
         
    //     int[] num1 = {3,4,5,6,7};
    //     int[] num2 = {12,16,22,24,29};
    //     int[] num3 = {41,43,45,47,49};


    //     int num1짝수 = 0;
    //     int num1홀수 = 0;
    //     int num2짝수 = 0;
    //     int num2홀수 = 0;
    //     int num3짝수 = 0;
    //     int num3홀수 = 0;


    //     for(int i=0; i<num1.length; i++){
    //          if(num1[i]%2==0){
    //             num1짝수++;
    //          }else{
    //             num1홀수++;
    //          }
    //     }
             
    //     for(int j=0; j<num2.length; j++){
    //         if(num2[j]%2==0){
    //              num2짝수++;
    //          }else{
    //              num2홀수++;
    //          }
    //     }
             
    //      for(int k=0; k<num3.length; k++){
    //         if(num3[k]%2==0){
    //               num3짝수++;
    //          }else{
    //               num3홀수++;
    //          }
    //     }
    //     System.out.println("[3,4,5,6,7]");
    //     System.out.println("짝수는"+num1짝수+"개입니다.");
    //     System.out.println("홀수는"+num1홀수+"개입니다.");
    //     System.out.println("[12,16,22,24,29]");
    //     System.out.println("짝수는"+num2짝수+"개입니다.");
    //     System.out.println("홀수는"+num2홀수+"개입니다.");
    //     System.out.println("[41,43,45,47,49]");
    //     System.out.println("짝수는"+num3짝수+"개입니다.");
    //     System.out.println("홀수는"+num3홀수+"개입니다.");
        

    //     //6.컴퓨터가 생각한 숫자 맞추기

    //     /*
    //      * 조건
    //      * 1과 100사이의 값을 반복적으로 입력해서 컴퓨터가 생각한 값(임의의 값)을 맞추면 
    //      * 게임이 끝남 사용자가 값을 입력하면 컴퓨터는 자신이 생각한 값과 비교해서 결과를 알려준다.
    //      * 사용자가 컴퓨터가 생각한 숫자를 맞추면 게임이 끝나고 몇번만에 숫자를 맞췄는지 알려준다.
    //      */

    // int computer =(int)(Math.random()*100)+1;
    // int me = 0;

    // boolean play=true;
    // int i = 0;

    // System.out.println("1~100까지 어떤 숫자인지 맞춰보세요.");

    // while(play){
    //     me = sc.nextInt();

    //     if(computer==me){
    //         System.out.println("정답입니다."+(i+1)+"번째에 맞추셧습니다.");
    //         break;
    //     }
    //     if(computer<me){
    //         System.out.println("입력하신 값보다 작습니다.");
    //     }else{
    //         System.out.println("입력하신 값보다 큽니다.");
    //     }
    //     i++;
    // }   
        
         
    }
}
