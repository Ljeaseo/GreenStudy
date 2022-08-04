package inheritance;
//부모클래스
public class point2D {
   int x;
   int y;
   
   point2D(int x,int y){
    this.x=x;
    this.y=y;
   }

   String getLocation(){
    return "x:"+x+"y:"+y;
   }
}
