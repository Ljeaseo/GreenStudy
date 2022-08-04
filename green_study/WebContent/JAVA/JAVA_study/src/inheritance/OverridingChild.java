package inheritance;
public class OverridingChild extends Overriding{
   int z;
   

   //오버라이딩
   //1. 메소드 이름이 같아야 함.
   //2. 매개변수가 같아야 함.
   //3. 리턴타입이 같아야 함.
   int add(){
    return z+y+z;
   }
}
