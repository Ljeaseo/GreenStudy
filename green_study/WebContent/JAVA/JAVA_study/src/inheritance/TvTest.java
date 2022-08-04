package inheritance;
public class TvTest {
    public static void main(String[] args)  {
       
    //Tv클래스를 인스턴스 생성(Tv t = new Tv();)
    //new Tv()(Tv클래스의 주소를 생성)
    //Tv()는 생성자를 호출
        // 포함관계
        //Tv t = new Tv();
        CaptionTv t = new CaptionTv();
    
        //Tv클래스에 있는 channel변수에10을 초기화
        t.channel=10;
        t.channelUp();
        System.out.println(t.channel);

        t.displayCaption("자막 봄1");
        t.caption=true;
        t.displayCaption("자막 봄2");
    }
}

