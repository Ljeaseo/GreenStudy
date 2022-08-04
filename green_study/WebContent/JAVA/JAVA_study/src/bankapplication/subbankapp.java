package bankapplication;

public class subbankapp extends Bankapp{
    
    subbankapp(int ano, String owner, int balance) {
        super(ano, owner, balance);
        
    }

    int[] list=null; //생성된 계좌를 저장할 목록

    Bankapp[] acountlist = null;

    
}
