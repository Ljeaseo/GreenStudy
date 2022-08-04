package study_baekjoon;


import java.util.Scanner;
public class Study_1085 {
public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int x = sc.nextInt();
    int y = sc.nextInt();
    int w = sc.nextInt();
    int h = sc.nextInt();

    int xmin = Math.min(x,w-x);
    int ymin = Math.min(y,h-y);

    System.out.println( Math.min(xmin,ymin));
    
    }
    }
