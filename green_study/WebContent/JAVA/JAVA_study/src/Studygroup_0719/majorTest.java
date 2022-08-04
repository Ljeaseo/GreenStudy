package Studygroup_0719;

import java.util.ArrayList;
import java.util.Scanner;
public class majorTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<major> arr = new ArrayList<major>();
        
        major mj = new major();
        
        boolean play = true;

        while(play){
            System.out.println("1.학과 정보 등록");
            System.out.println("2.학과 정보 목록");
            System.out.println("3.프로그램 종료");
            System.out.print("선택>>");
            int choice = sc.nextInt();

                if(choice == 1){
                    System.out.println("====학과정보를 등록합니다====");
                    System.out.print("학과입력>>");
                    String majorname = sc.next();
                    System.out.print("학년 입력>>");
                    int grade = sc.nextInt();
                    System.out.print("학생수 입력>>");
                    int stno = sc.nextInt();

                    arr.add(mj);
                }else if(choice == 2){
                    if(arr.size()!=0){
                        System.out.println("====학과 목록입니다.====");
                        for(int i = 0; i<arr.size(); i++){
                        System.out.println("학과 :"+arr.get(i).getMajor());
                        System.out.println("학년 :"+arr.get(i).getGrade());
                        System.out.println("학생수 :"+arr.get(i).getStno());
                        }
                    }else{
                        System.out.println("등록된 학과가 없습니다.");
                    }
                }else if(choice == 3){
                    System.out.println("프로그램을 종료합니다.");
                    break;
                }
                        
        }
    }
}
