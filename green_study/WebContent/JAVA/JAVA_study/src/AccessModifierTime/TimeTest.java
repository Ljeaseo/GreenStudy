package AccessModifierTime;

public class TimeTest {
    public static void main(String[] args) {
        //매개 변수가 3개인 생성자 호출
        Time t = new Time(30,100,5000);

        System.out.println(t.getHour()+"시"+t.getMinute()+"분"+t.getSecond()+"초");
    }
}

