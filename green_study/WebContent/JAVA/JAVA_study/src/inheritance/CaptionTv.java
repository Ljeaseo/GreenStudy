package inheritance;
// 자식클래스(extends Tv(부모클래스로부터 받아옴.))
public class CaptionTv extends Tv{
    // 자막을 볼건지(true), 안볼건지(false)
    boolean caption;
    // 자막을 보여주는 기능(매서드)
    void displayCaption(String text){
        //caption에 저장되어있는 값이 true이면 자막을 보여주세요
        if(caption){
            System.out.println(text);
        }
       
    }
}
