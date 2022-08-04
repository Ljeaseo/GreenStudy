package people_0715;

public class Man extends People {
    //오버라이딩
    void printInfo(){
        // 부모클래스(super)에 있는 printInfo메소드 호출
        super.printInfo();
        System.out.println("그리고 남자입니다.");
    }

    void enlist(){
        System.out.println("군대감");
    }
}
