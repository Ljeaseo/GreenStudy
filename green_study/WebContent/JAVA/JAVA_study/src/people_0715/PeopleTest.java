package people_0715;

public class PeopleTest {
    public static void main(String[] args) {
    /*    // (기본형)
    //  int w = 10;               
        Woman w = new Woman();
    //  int m = 20;
        Man m = new Man();

        w.printInfo();
        m.printInfo();
    */  

        // (다양성)
        // 부모 클래스 하나에 자식 클래스 여러개를 호출할수 있는것이 다양성.
        // People타입 하나로 Man 타입과 Woman타입을 다 불러올 수 있게됨.
        
        //People참조타입 p로 Man클래스 참조.
        People p = new Man();
        p.printInfo();
        
        
        //enlist()메소드 호출 안됨. 
        //(참조형 변수p는 People타입이고, People클래스에는
        //enlist메소드를 갖고 있지 않기 때문)
        //부득이하게 사용해야 한다면 각 참조형 타입으로 형변환을 해주면된다.
        ((Man)p).enlist();
        
        //People참조타입 p로 Woman클래스 참조.
        p = new Woman();
        p.printInfo();
        
        //makeup()메소드 호출 안됨.
        ((Woman)p).makeup();
    }

}
