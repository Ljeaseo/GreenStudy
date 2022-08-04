public class java_class_0704_연습문제 {
    public static void main(String[] args)  {
    //--예제 1번 풀이 (올림,반올림,버림)--
        // float apple = 123;
        // int basket = 10;
        //    System.out.println(Math.ceil(apple/basket));     
     
    
    //--예제 1번 풀이 (if문)--
    int apple = 123;
    int basket = 10;
    
       if(apple%basket ==0){
        System.out.println(apple/basket);
       }else{
        System.out.println(apple/basket+1);
       }
    //------------------------------------------------------------------------
       
    //--예제 2번-- 
       int num = -1;

       System.out.println((num > 0) ? "양수" : (num < 0) ? "음수" : "0");

    //--예제 3번--   
    
    byte a = 10;
    byte b = 20;
      int c = a + b;
    //byte c = (byte)(a+b);
    System.out.println("c="+c);      // byte의 데이터값은 문제가 없지만 이항 연산자의 특징상 byte c => int c 로 변경해야 계산이 가능하다. 

    char ch = 'A';
     ch += 2;     
     //ch = (char)(ch+2);
    System.out.println("ch="+ch);    // char+int -> int를 char로 바꾸어주어야 연산이 가능하다.     

    float f = 3/2f;
    System.out.println("f="+f);

    long l = 3000*3000*3000L;
    System.out.println("l="+l);      // 3000*3000*3000 -> long 으로 형변환 하지 않으면 overflow현상이 발생한다.
    
    float f2 = 0.1f;
    double d = 0.1;                

    boolean result = (float)d == f2;
    System.out.println("result="+result);   //double이 float보다 좀더 정밀한 값을 가지고 있기 때문에 형변환을 해주어야 한다.
    
    //--에제 4번 --
     
    //문자형 변수를 저장하는 ch 변수 char 선언
     char ch10 = 'A';
    // true / false 를 저장하는 b변수 boolean 선언  
     boolean b10 = ((ch10 >='A' && ch10 <='Z')||(ch10 >='a' && ch10 <='z')||(ch10 >='0' && ch10 <='9'));
    // (아스키코드와 삼항연산자를 활용한 풀이)
    //  boolean b10 = ch >= 65 && ch <= 90 || ch >= 97 && ch <= 122 || ch >= 48 && ch <= 57 ? true : false ;

     System.out.println(b10);


   }
}
