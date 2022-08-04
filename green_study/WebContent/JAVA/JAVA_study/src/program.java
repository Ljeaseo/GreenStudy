import java.util.Scanner;
public class program {
    public static void main(String[] args)  {
        Scanner sc = new Scanner(System.in);

        boolean program = true;

        int studentN = 0;

        int[] score = null;

        while (program) {
            System.out.println("-------------------------------------------");
            System.out.println("1.학생수|2.점수입력|3.점수리스트|4.분석|5.종료");
            System.out.println("-------------------------------------------");
            System.out.print("선택>");
            int choice = sc.nextInt();

            if (choice == 1) {
                System.out.print("학생수>");
                studentN = sc.nextInt();

            }

            else if (choice == 2) {
                score = new int[studentN];
                
                for (int i = 0; i < studentN; i++) {
                    System.out.print("학생>");
                    score[i] = sc.nextInt();
                }
            }

            else if (choice == 3) {
                for (int i = 0; i < studentN; i++) {
                    
                    System.out.println("학생"+(i+1)+">"+ score[i]);
                }
            }

            else if (choice == 4) {
                int max = score[0];
                int sum = 0;
                for (int i = 0; i < studentN; i++) {

                    if (max <= score[i]) {
                        max = score[i];
                    }
                }
                for (int i = 0; i < studentN; i++) {
                    sum +=score[i];
                }
                float avg = (float)sum / studentN;
                System.out.println("최고점수 :" + max);
                System.out.println(String.format("평   균  :" +"%.1f" , avg));

            }

            else if (choice == 5) {
                program = false;
                System.out.println("프로그램 종료");
            }

        }
    }

}
