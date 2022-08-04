package collection_0715;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class Collection {
    public static void main(String[] args) {
    Scanner s = new Scanner(System.in);
    /*
        //배열
        int[] score = new int[3];
        //정적배열
        Student[] stu = new Student[3];
        
        stu[0] = new Student();
        stu[0].name = "정자바";
        stu[0].sum = 100;
        
        stu[1] = new Student();
        stu[1].name = "이재서";
        stu[1].sum = 50;
        
        stu[2] = new Student();
        stu[2].name = "김재서";
        stu[2].sum = 70;
        
        for(int i = 0; i < stu.length; i++){
            stu[i] = new Student();
            stu[i].name =s.next();
            stu[i].sum = s.nextInt();
        }
    */
        
        //동적배열
        /*
        ArrayList<Integer> al = new ArrayList<>();   //Integer 정수만 저장
        
        al.add(10);
        al.add(20);
        al.add(30);
        al.add(40);

        
        for(int i=0;i<al.size();i++){
        System.out.println(al.get(i));
    }

        Student stu = new Student(null, 0);
        ArrayList<Student> als = new ArrayList<>();

        stu.name="정자바";
        stu.sum=100;
        als.add(stu);
        stu.name="정자바";
        stu.sum=100;
        als.add(stu);
        stu.name="정자바";
        stu.sum=100;
        als.add(stu);


        for(int i=0;i<als.size();i++){
            System.out.println(als.get(i).name);
            System.out.println(als.get(i).sum);
        }
        */

        //HashMap<key,value>map = new HashMap();

        //HashMap<Integer,String> map = new HashMap<>();

        // HashMap 값 추가 
        //map.put(1, "java");
        //map.put(1, "c");
        //map.put(1, "c++");

        //System.out.println(map.get(1));
        //System.out.println(map.get(2));
        //System.out.println(map.get(3));

        HashMap<Integer,Student>map2 = new HashMap<>();
        Student stu2 = new Student();
        stu2.name="정자바";
        stu2.sum=100;
        map2.put(1,stu2);
        stu2 = new Student();
        stu2.name="홍길동";
        stu2.sum=95;
        map2.put(1,stu2);
        stu2 = new Student();
        stu2.name="최씨샾";
        stu2.sum=90;
        map2.put(1,stu2);

        System.out.println(map2.get(1).name);
        System.out.println(map2.get(1).sum);
        
        System.out.println(map2.get(2).name);
        System.out.println(map2.get(2).sum);
    
        System.out.println(map2.get(3).name);
        System.out.println(map2.get(3).sum);
    }
}
