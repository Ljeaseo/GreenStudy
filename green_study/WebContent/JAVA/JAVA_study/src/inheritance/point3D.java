package inheritance;
//자식클래스
public class point3D extends point2D {
  int z;

  point3D(int x, int y, int z){
    super(x,y);                         // 부모클래스의 생성자 (제일 첫번째 줄에 있어야함.)
    
    this.z=z;
  }

  String getLocation(){                  //오버라이딩
    return "x:"+x+",y:"+y+",z:"+z;
   }
}
