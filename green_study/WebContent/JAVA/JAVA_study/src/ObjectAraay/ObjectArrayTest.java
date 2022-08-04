package ObjectAraay;
public class ObjectArrayTest {
    public static void main(String[] args)  {
        //int[] array = new int[7];
        // array 배열에는 정수만 입력할 수 있다.
        int[] array = {10,20,30,40,50,60,70,80};
       
        //객체타입을 배열로 생성
        
        // objarray배열에는 ObjectArray클래스에 선언되어 있는
        // 변수 및 메서드에만 접근
        ObjectArray[] objarray = new ObjectArray[7];
        
        //ObjectArray[0] objarray = new ObjectArray();
        objarray[0].name="가";
        objarray[0].score=100;
        
        //ObjectArray[1] objarray = new ObjectArray();
        objarray[1].name="나";
        objarray[1].score=88;

        //ObjectArray[2] objarray = new ObjectArray();
        objarray[2].name="다";
        objarray[2].score=100;
  
        //ObjectArray[3] objarray = new ObjectArray();
        objarray[3].name="라";
        objarray[3].score=70;


        System.out.println(objarray[0].name);
        System.out.println(objarray[0].score);
       
        System.out.println(objarray[1].name);
        System.out.println(objarray[1].score);
       
        System.out.println(objarray[2].name);
        System.out.println(objarray[2].score);
        
        System.out.println(objarray[3].name);
        System.out.println(objarray[3].score);


        for(int i=0;i<objarray.length;i++){
            if(objarray[i]==null){
                break;
            }
            System.out.println(objarray[i].name);
            System.out.println(objarray[i].score);
        }
        
    
    
    
    
    //-----------------------------------------------------------------------------//
    
    /*
    객체지향언어 특징
    1. 상속성
       class A extends B{}
       -B클래스에 있는 모든 속성과 메서드는 A클래스에서 상속받음.

       -오버라이딩(Overriding)
        : 상속을 해야지만 가능한 개념
          부모클래스로부터 상속받은 메소드의 내용을 
          자식클래스에서 그 내용을 변경하는것.
       -오버로딩             vs      오버라이딩
       상속하고 관계 X               상속이어야함.
    1. 메소드명 같음                 메소드명 같음
    2. 매개변수가 달라야 함           매개변수가 같아야 함
    3. 반환타입은 고려하지않음        반환타입이 같아야함    
        -super. / super()
    2. 캡슐화

       public > protected > default > private

       public : 접근에 대한 제한이 없음
       protected : 동일한 패키지 내에 존재하거나 
                   상속을 통해서만 접근 가능
       default : 동일한 패키지 내에서만 접근
                 (아무런 접근제어자를 명시하지 않으면 default)
       private : 자기 자신의 클래스 내에서만 접근
    3. 다형성
        
    */
    
    }
}
