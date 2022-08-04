package Constructor_Ex;



public class ConstructorExTest {
    public static void main(String[] args)  {
      
        //인스턴스 생성(card1)//생성자호출(매개변수 2개인 생성자)     
        ConstructorEx card1 = new ConstructorEx ();
        //인스턴스 생성(card2)//생성자 호출(매개변수가 없는 생성자-> 기본생성자)
        ConstructorEx card2 = new ConstructorEx (3,false);
        System.out.println(card1.info());
        System.out.println(card2.info());
        
       
        
    
    
        
        
        
    }
}
