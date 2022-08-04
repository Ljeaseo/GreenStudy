
import java.util.Scanner;
public class java_class_0705 {
    public static void main(String[] args)  {
        //========= if 조건문================ 
        
        // else가 없는 if 문
        
        //평균이 70점 이상이면 합격
        
       // float avg=70f;
       
      // if(avg >= 70){
        //   System.out.println("합격");
       // }
        
        
        // if ~ else 문
        //    평균이 70점 이상이면 합격 아니면 불합격
       // float avg=70f;
        Scanner s = new Scanner(System.in); 
        System.out.println("평균");
        float avg = s.nextFloat();
        
    if(avg >= 70){
        System.out.println("합격");
    }else{
        System.out.println("불합격");
    }
    
    // if ~ else if ~ else 문
     
    // 평균이 70점 이상이면 합격, 69.5점이면 보류, 그렇지 않으면 불합격
    /* 
    float avg=70.1f;

    if(avg >= 70f){
        System.out.println("합격");
    }else if(avg >= 69.5f){
        System.out.println("보류");
    }else{
        System.out.println("불합격");
    }
    */

    //===========반복문 =================
    
    //for 반복문
    // 반복해서 실행
    
    // for (초기값;조건식;증감값){반복할 문장}
    
    // 1 ~ 100까지 숫자를 더하라.
    /*
    int sum=0;
    int i=0;
    for(i=1;i<=100;i++){
        sum+=i;
    }
    System.out.println("1~"+(i-1)+"까지의 합은"+sum);
    */
    
    //while 반복문
    // while(조건식){반복할문장}
    
    //1~100까지 숫자의 합이 100이 될동안 반복해라
    
    //  sum = 200;
    // int i = 0;
    // while(sum<100){
        //       sum+=i;
        //       i++;
        // }
        //       System.out.println(sum);
        
        //do while 반복문
        
    // int sum = 200;
    // int i = 0;
    
    // do{
    //       sum+=i;
    //       i++;
    // }
    // while(sum<100);{
    //       System.out.println(sum);
    // }
        }
}
