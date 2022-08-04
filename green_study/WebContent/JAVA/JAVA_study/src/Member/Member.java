package Member;

public class Member {

   String name;
   String id;
   String password;
   int age;
   boolean login;
  
//login()메소드는 매개값 id가 "hong",매개값 password가 "12345"일 경우에만
//true로 리턴하고 그이외의 값일 경우에는 false 값을 리턴하도록 한다.
   
   boolean login(String id, String password){
    
    if(id=="Hong"&&password=="12345"){
        
        return true;
    }else{
        
        return false;
    }
    }
   
    void logout(String id){
       System.out.println("로그아웃되었습니다.");
   }
  

}
