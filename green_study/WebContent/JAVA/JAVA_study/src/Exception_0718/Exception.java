package Exception_0718;


import java.util.Scanner;

public class Exception {
    

    public static void main(String[] args) {
       /*
        int a=0;
        int b=0;
        // 예외처리
        
        System.out.println(1);
        System.out.println(2);
        try{
        System.out.println(3);
        System.out.println(a/b);
        System.out.println(4);
        }catch(ArithmeticException ae){
            System.out.println(5);
            
            if(a==0){
                a=1;
            }
            if(b==0){
                b=1;
            }
            System.out.println(a/b);
        }
        System.out.println(6);

        // 1. 예외가 발생한 경우
        //  try -> catch -> finally
        // 2. 예외가 발생하지 않은 경우
        //  try -> finally
        
        */
        
        //6.컴퓨터가 생각한 숫자 맞추기

        /*
         * 조건
         * 1과 100사이의 값을 반복적으로 입력해서 컴퓨터가 생각한 값(임의의 값)을 맞추면 
         * 게임이 끝남 사용자가 값을 입력하면 컴퓨터는 자신이 생각한 값과 비교해서 결과를 알려준다.
         * 사용자가 컴퓨터가 생각한 숫자를 맞추면 게임이 끝나고 몇번만에 숫자를 맞췄는지 알려준다.
         */
        Scanner s = new Scanner(System.in);
        
        boolean play=true;
        
        
        System.out.println("1~100까지 어떤 숫자인지 맞춰보세요.");
        int computer =(int)(Math.random()*100)+1;
        int me = 0;
        int i = 0;
        while(play){
            
        try{
            me = s.nextInt();
            if(me<0 && me>100){
                System.out.println("잘못 입력하셨습니다. 다시입력해주세요.");
                
                continue;
            }
            if(computer==me){
                System.out.println("정답입니다."+(i+1)+"번째에 맞추셧습니다.");
                System.out.println("게임이 종료되었습니다.");
                break;
            }
            if(computer<me){
                System.out.println("입력하신 값보다 작습니다.");
                
            }else{
                System.out.println("입력하신 값보다 큽니다.");
                
            }
            
        }
        catch(java.util.InputMismatchException e){
            System.out.println("숫자만 입력 가능합니다.");
            s.next();
            i+=1;
            continue;
        }   
        
        i+=1;
    }  

}
        

   
}
