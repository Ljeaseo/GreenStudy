package study_baekjoon;



import java.util.Scanner;
public class Study_1110 {
    public static void main(String[] args) {
        
        /* 0보다 크거나 같고, 99보다 작거나 같은 정수가 주어질 때 다음과 같은 연산을 할 수 있다. 
        먼저 주어진 수가 10보다 작다면 앞에 0을 붙여 두 자리 수로 만들고, 각 자리의 숫자를 더한다.
        그 다음, 주어진 수의 가장 오른쪽 자리 수와 앞에서 구한 합의 가장 오른쪽 자리 수를 이어 붙이면 새로운 수를 만들 수 있다. 
        다음 예를 보자.

        26부터 시작한다. 2+6 = 8이다. 새로운 수는 68이다. 6+8 = 14이다. 새로운 수는 84이다. 8+4 = 12이다. 
        새로운 수는 42이다. 4+2 = 6이다. 새로운 수는 26이다.

        위의 예는 4번만에 원래 수로 돌아올 수 있다. 따라서 26의 사이클의 길이는 4이다.

        N이 주어졌을 때, N의 사이클의 길이를 구하는 프로그램을 작성하시오.*/
        
        
        Scanner sc = new Scanner(System.in);
        
        int num = sc.nextInt();  // 문제 N의 값을 받을 int num
        int a = num;             // 연산후 원래의 값을 저장해줄 int a
        int count = 0;           // 원래의 값으로 돌아오기까지 몇번 연산하는지 저장할 int count

        while(true){
            int left = a/10;     // 십단위 숫자를 따로 구해주기 위해서 입력받은 숫자에 /10을 해준다.
            int right = a % 10;  // 일단위 숫자를 구해주기 위해서 10을 나눈 나머지값을 구한다. 
            a = right * 10 + (left+right) %10;   // 십단위 숫자와 일단위 숫자를 더한다.
            count++;
            if(num == a){                        // 처음 입력한 값이 나올때까지.
                break;
            }

        }

    System.out.println(count);                    // 몇번 연산했는지 출력.
        
    }
}
