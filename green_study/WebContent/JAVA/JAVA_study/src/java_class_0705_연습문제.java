import java.util.Scanner;
public class java_class_0705_연습문제 {
    public static void main(String[] args)  {
        Scanner sc = new Scanner(System.in);
        boolean play = true;
        int money = 0;
    
    while(play) {
        System.out.println("");
        System.out.println("---------------------------");
        System.out.println("1.예금 ㅣ 2.출금 ㅣ 3.잔고 ㅣ 4.종료");
        System.out.println("---------------------------");
        System.out.print("선택하기 :");
        
        int choice = sc.nextInt();
        
        
           
            if(choice == 1){
                System.out.print("예금액 :");
                money+=sc.nextInt();
            }else if(choice == 2){
                System.out.print("출금액 :");
                money-=sc.nextInt();
            }else if(choice == 3){
                System.out.print("잔고액 :"+money);
            }else if(choice == 4){
                System.out.println("프로그램 종료");
                play=false;
            }
                
       
    }
}
}