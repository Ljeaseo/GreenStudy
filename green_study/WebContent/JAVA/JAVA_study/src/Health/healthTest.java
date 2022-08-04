package Health;

public class healthTest {
    public static void main(String[] args) {
        
        Subhealth sh = new Subhealth(); 
        
        System.out.println("*****비만도 Check*****");
        sh.input();
        sh.output2();
        sh.calculate();
        sh.output1();
    }
}
