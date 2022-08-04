import java.util.Arrays;
import java.util.Scanner;
public class java_class_Array {
    public static void main(String[] args)  {
        //=====배열=====//
        
        
        //배열 선언
/* 
        타입[]배열명={값,값}
        int[] array={10,20}
        
        타입 배열명[]={값,값,값}
        int array[]={10,20,30}
        int[] array = {100,88,100,93,71,1,2,3,3,3,3,6,4,4,8,5,2,4,4};
        
        // System.out.println(array[0]);
        // System.out.println(array[1]);
        // System.out.println(array[2]);
        // System.out.println(array[3]);
        // System.out.println(array[4]);
        
        for (int i=0;i<array.length;i++){
            System.out.println(array[i]);
            
            */




        // ex) 10명의 학생의 점수에 총점, 평균, 최대값, 최소값을 구해보자.
        // int[] array={79,88,91,33,100,55,95,60,72,57};
        
        // int sum = 0;                           //총점을 저장하는 변수
        // float avg = 0;                         //평균점수를 저장하는 변수
         
        // int max = array[0];                    // 최대값을 저장하는 변수
        // int min = array[0];                    // 최소값을 저장하는 변수
        
        // for (int i=0;i<array.length;i++){
        //     sum += array[i];
        //     avg = (float)sum/array.length;
            
        //     if(array[i]>max){                  // array[0]을 [1~9]까지 비교해서 제일 큰값을 변수 max에 저장.
        //         max=array[i];
        //     }
        //     if(array[i]<min){                  // array[0]을 [1~9]까지 비교해서 제일 작은값을 변수 min에 저장.
        //         min=array[i];
        //     }
        // }
        
        // System.out.println("총점="+sum);
        // System.out.println("평균="+avg);
        // System.out.println("최대값="+max);
        // System.out.println("최소값="+min);
//============================================================================
        //학생의 성적을 키보드로 입력받아서 처리//
        
        int[] arr = new int[10];   // new int[] 를 이용해서 배열의 길이를 선언.

        int size = arr.length;
        int sum = 0;
        float avg = 0;
        Scanner sc = new Scanner(System.in); 

        for (int i=0; i<size; i++){
            System.out.println("점수를 입력하세요.");
            arr[i] = sc.nextInt();
            sum += arr[i];
            avg=(float)sum/arr[i];
        }
        
        Arrays.sort(arr); // 올림 차순 정렬   *반복문 for 밖에서 sort로 정렬해주어야 입력한 값 중 최소값이 옳게 나옴.*
        
        System.out.println("총점="+sum);
        System.out.println("평균="+avg);
        System.out.println("최대값="+arr[arr.length-1]);                    //arr 첫번째 배열에서 마지막 배열로 돌아가게끔 -1을 붙여줌 
        System.out.println("최소값="+arr[0]);
        



    }

}
