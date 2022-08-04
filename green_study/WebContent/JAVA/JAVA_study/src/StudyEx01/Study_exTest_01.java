package StudyEx01;
import java.util.Scanner;
import account.Account;
public class Study_exTest_01 {
    public static void main(String[] args)  {
        Account[] accountArray = new Account[100];
        Scanner sc = new Scanner(System.in);
        Study_ex01 st = new Study_ex01(0, null, 0, 0);
        boolean play = true;

        while(play){
            System.out.println("=======학생관리프로그램=======");
            System.out.println("1.학과등록|2.학과목록|3.종료");
            System.out.println("=============================");

            int select = sc.nextInt();

            if(select == 1){
                //학과,학년,학생수 입력받기
                System.out.println("==학과 등록==");
                System.out.print("전공입력>>");
                st.Class=sc.next();
                System.out.print("학년입력>>");
                st.grade=sc.nextInt();
                System.out.print("학생수 입력>>");
                st.stno=sc.nextInt();

                for(int i =0; i < accountArray.length; i++ ){
                    if(accountArray[i] == null){
                        accountArray[i] = new Account(st.Class,st.grade,st.stno);
                        System.out.println("학과 등록을 완료하였습니다.");
                    }
                    break;
                }
            }else if(select == 2){
                //학생수가 많은 순서대로 학과 나열
                System.out.println("=====학과목록=====");
                for(int i = 0; i < accountArray.length; i++){
                    if(accountArray[i] == null){
                        System.out.println("등록된 학과가 없습니다.");
                        break;
                    }
                    System.out.println(
                        accountArray[i].Class()+"/t"+
                        accountArray[i].grade()+"/t"+
                        accountArray[i].stno()
                        );
                    }
                   
            }else if(select == 3){

                //프로그램 종료
                play=false;
            }
        }
    }
}


