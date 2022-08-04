package bankapplication;
import java.util.Scanner;

import account.Account;
public class bankappTest {
    private static Account[] accountArray = new Account[100];
    private static Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
        boolean play = true;
        
        while(play){
            System.out.println("=========================================");
            System.out.println("1.계좌생성|2.계좌목록|3.예금|4.출금|5.종료");
            System.out.println("=========================================");
            System.out.println("선택>");

            int selectNo = scanner.nextInt();
            
            
            if (selectNo == 1) {
				createAccount();
			} else if (selectNo == 2) {
				accountList();
			} else if (selectNo == 3) {
				deposit();
			} else if (selectNo == 4) {
				withdraw();
			} else if (selectNo == 5) {
				play = false;
                System.out.println("프로그램 종료");
			}
		}
            
        }
        
        
    

        
    
    
    public static void createAccount() {
        System.out.println("---------");
        System.out.println("계좌 생성");
        System.out.println("---------");
        System.out.print("계좌 번호:");
        String ano = scanner.next();
        System.out.print("계좌주:");
        String owner = scanner.next();
        System.out.print("초기입금액:");
        int money = scanner.nextInt();


        for (int i = 0; i < accountArray.length; i++){
            if(accountArray[i] == null){
            accountArray[i] = new Account(ano,owner,money);
            System.out.println("계좌가 생성되었습니다.");
            break;
            }
        }
    }

    public static void accountList() {
        System.out.println("---------");
        System.out.println("계좌 목록");
        System.out.println("---------");
        for(int i = 0 ; i < accountArray.length; i++){
            if(accountArray[i] == null){
                
                System.out.println
                (accountArray[i].getAno() + "\t" + accountArray[i].getOwner() + "\t" + accountArray[i].getBalance());
            }
        }

    }
       



    public static void deposit() {

        System.out.println("---------");
        System.out.println("예    금");
        System.out.println("---------");
        System.out.print("계좌번호: ");
		String ano = scanner.next();
		System.out.print("예금액: ");
		int dep = scanner.nextInt();

		if (findAccount(ano) == null) {
			System.out.println("입력한 계좌번호를 찾지 못했습니다.");
		} else {
			findAccount(ano).setBalance(findAccount(ano).getBalance() + dep);
			System.out.println("입금되었습니다.");
		}
		
	}
        



    public static void withdraw(){
        System.out.println("--------");
		System.out.println("출금");
		System.out.println("--------");
		System.out.print("계좌번호: ");
		String ano = scanner.next();
		System.out.print("출금액: ");
		int withd = scanner.nextInt();

		if (findAccount(ano) == null) {
			System.out.println("입력한 계좌번호를 찾지 못했습니다.");
		} else {
			if (withd > findAccount(ano).getBalance()) {
				System.out.println("잔액보다 큰 액수를 입력하셨습니다.");
			} else {
				findAccount(ano).setBalance(findAccount(ano).getBalance() - withd);
				System.out.println("결과: 출금이 성공되었습니다.");
			}
		}

    }
    public static Account findAccount(String ano){
        for (int i = 0 ; i < accountArray.length; i++){
            if(accountArray[i] == null){
                break;
            }
            if(accountArray[i].getAno().equals(ano)){
                return accountArray[i];
            }
        }
        return null;
    }

}   


