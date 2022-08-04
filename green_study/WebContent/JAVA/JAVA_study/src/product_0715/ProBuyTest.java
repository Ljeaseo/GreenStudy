package product_0715;

public class ProBuyTest {
    public static void main(String[] args) {
        Buyer b = new Buyer();

        b.buy(new Computer()); // 컴퓨터를 사겠다.

        b.buy(new Tv()); // 티비를 사겠다.
        
        System.out.println("현재 소유한 금액은"+b.money+"만원 입니다.");
    }
}

