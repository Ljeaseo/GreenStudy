package people_0715;

public class Woman extends People {
    //오버라이딩
    void printInfo(){
        // 부모클래스(super)에 있는 printInfo메소드 호출
        super.printInfo();
        System.out.println("그리고 여자입니다.");
    }

    void makeup(){
        System.out.println("메이크업");
    }
}
