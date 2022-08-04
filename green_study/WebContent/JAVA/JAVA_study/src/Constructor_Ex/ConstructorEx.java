package Constructor_Ex;

public class ConstructorEx {
 //다음과 같은 멤버변수를 갖는 클래스를 정의하시오. 
   int num;
   boolean isKwang;
   
   ConstructorEx(){
   this(1,true);
   }
   
   //클래스명(){}
   //매개변수가 두개인 생성자 선언
   ConstructorEx(int num, boolean isKwang){
      this.num = num;
      this.isKwang = isKwang;
   }
      
   //매개변수가 없는 생성자 선언 : 기본생성자 선언
   String info(){
    return num+(isKwang? "K" : "");
   }

}





