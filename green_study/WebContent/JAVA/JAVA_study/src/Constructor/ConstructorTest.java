package Constructor;

public class ConstructorTest {
    public static void main(String[] args)  {
        
        //인스턴스 생성
        //Constructor d = new Constructor();
    //--- 명시적 초기화 ---//
        // Constructor클래스에 있는 a변수에 10저장.
        //d.a=10;
        // Constructor클래스에 있는 b변수에 20저장.
        //d.b=20;
        // Constructor클래스에 있는 c변수에 30저장.
        //d.c=30;
        
       //생성자를 이용한 초기화(생성자 호출)
       
       Constructor d4 = new Constructor();
       
       Constructor d = new Constructor(10,20,30);
    }
}
