package inheritance;
public class child extends parent{
    //int x=10;

    int x = 20;
    void method(){

        
        System.out.println("x="+x);
        System.out.println("this.x="+this.x);
        System.out.println("super.x="+super.x);
    }
}
