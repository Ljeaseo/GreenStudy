package product_0715;

public class Buyer {
    //소유금액
    int money=1000;
    Product[] item = new Product[5];
    int i = 0; // item의 인데스 값을 i변수에 저장

    //제품 사는 기능
    void buy(Product p){
        
        //소유금액(money) = 소유금액(money) - 제품 가격
        money-=p.price;
        System.out.println(p.toString()+"을 구입하셨습니다.");
        
        item[i++]=p;
    }
    
    
}
