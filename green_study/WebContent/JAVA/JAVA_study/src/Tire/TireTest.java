package Tire;
public class TireTest {
    public static void main(String[] args)  {
       //앞 왼쪽 타이어
        Tire fl = new Tire();
       fl.ratio=20;
       System.out.println(fl.ratio);
       //앞 오른쪽 타이어
       Tire fr = new Tire();
       System.out.println(fr.ratio);
       //뒤 왼쪽 타이어
       Tire bl = new Tire();
       //뒤 오른쪽 타이어
       Tire br = new Tire();
    }
}
