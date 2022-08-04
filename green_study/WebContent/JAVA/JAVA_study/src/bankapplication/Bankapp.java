package bankapplication;



public class Bankapp {
    
    
    private int ano;
    private String owner;
    private int balance;

    Bankapp(int ano,String owner,int balance){
        this.ano = ano;
        this.owner = owner;
        this.balance = balance;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

   

}



