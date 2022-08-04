package bookshop;

public class BookShop {
    private String bname;
    private String author;
    private int price;

    void bookshop(String bname,String author,int price){
        setBname(bname);
        setAuthor(author);
        setPrice(price);
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    
    void viewBook(){
       System.err.println("책이름:"+bname);
       System.out.println("저 자:"+author);
       System.out.println("가 격:"+price);
    }

    


}
