package entryEx;
public class Entrychild extends Entry {
    /*
    String definition;
    int year;

    Entrychild (String word,String definition,int year){
        super(word);
        this.definition=definition;
        this.year=year;
    }
    public void printView(){
        System.out.println("*****약어사전*****");
        System.out.println("약어:"+word);
        System.out.println("원어:"+definition);
        System.out.println("시기:"+year);
    }
    */
    //-----------------------------------------------------------------------

    //속성
    String definition;                        //인스턴스 변수 (원어 저장)
    int year;                                 //인스턴스 변수 (시기 저장)
    //메서드 종류 중에서 생성자
    Entrychild(String w){                       //매개변수가 하나인 생성자
        word=w;
    }                   
    Entrychild(String w, String d, int y){      //매개변수가 세개인 생성자
        this(w);
        definition=d;
        year=y;
    }   
     //메서드(매개변수가 없고, 리턴도 없는 인스턴스 메서드)
    public void printView(){                  //원어, 시기 출력
        System.out.println("원어 : Object Oriented Programming");
        System.out.println("시기 : 1991 년");
    }





}