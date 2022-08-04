package Member;



public class MemberTest {
    public static void main(String[] args)  {
       
        Member user1 = new Member();
        
       
        //Menber클래스에 있는 login메서드 호출
        
        if(user1.login("Hong","12345")){
            System.out.println("로그인 되었습니다.");
        }else{
            System.out.println("로그인에 실패하였습니다.");
        }
    }
}
