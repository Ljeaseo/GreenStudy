package Health;
import java.util.Scanner;
public class health {
    Scanner sc = new Scanner(System.in);
    //속성
    char gender;     //성별저장(인스턴스 변수)
    double tall;     //신장저장(인스턴스 변수)
    double weight;   //체중저장(인스턴스 변수)
    //생성자
    health(){        //매개변수가 없는 생성자(기본생성자)
    }
      
    //메서드
    void input(){   //매개변수가 없고 리턴도 없는 인스턴스 메서드
                    //성별,신장,체중입력받기
        System.out.print("성별(M/F):");
        gender=sc.next().charAt(0);
        System.out.print("신장(Cm):");
        tall=sc.nextDouble();
        System.out.print("체중(Kg):");
        weight=sc.nextDouble();
    }
    
    void output2(){   //매개변수가 없고 리턴도 없는 인스턴스 메서드
        
        System.out.println("성별(M/F):"+gender);
        System.out.println("신장(Cm):"+tall);
        System.out.println("체중(Kg):"+weight);
    }

        
}
