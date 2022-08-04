package study_baekjoon;


import java.util.Scanner;
public class Study_2839 {
public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int suger = sc.nextInt();

    int a = (suger/5)+((suger%5)/3);
    

    if((suger%5)%3 != 0){
        System.out.println("-1");
    }else{
    System.out.println(a);
    }
    }
}
