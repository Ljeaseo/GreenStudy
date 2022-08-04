package entryEx;
public class Entry {
    /* 내가 푼식 
    String word;

    Entry(String word){
        this.word=word;

    */
    //==============================================================

    //속성
    String word;     //인스턴스 변수(약어 저장)
    //메서드 종류 중에서 생성자
    Entry(){}                                  //매개변수가 없는 생성자
    Entry(String w){                           //매개변수가 하나인 생성자
        word=w;
    }                          
    //매서드 (매개변수가 없고, 리턴도 없는 인스턴스 매서드)
    public void writeView() {                  //약어 출력
        System.out.println("*****약어사전*****");
        System.out.println("약어 : OOP");
    }

}
    

        
       
  