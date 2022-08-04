public class java_class_0701{
    public static void main(String[] args){
        
        // 자바에서의 변수를 알아보자 //
       
       /* 
        변수의 자료형 (4가지)
            -논리형
                boolean booleanType=true;
                    - 논리형에는 boolean 한가지 밖에 없다.
                      저장 값도 true, false 두가지 뿐이다.
                      기본값은 false이고, 주로 논리식, 조건식 등에 사용한다.
            -문자형
                char charType="a";
                    - char형은 2byte의 크기를 가지고 있다.
                      65536개의 값을 표현할수 있으며 
                      문자를 저장한다기 보다 문자를 나타내는 정수값이 저장되고
                      출력이 문자로 표형된다고 이해하면된다.
                      (char형은 한글자만 취급을함. 작은 따옴표를 사용해야함.)

            -정수형
                byte byteType=127; (8비트)
                short shortType=32767; (16비트)
                int(*) intType=2147483647; (32비트)
                long longType=9223372036854775807L; (64비트)
                    - 정수형은 4가지가 있다. 크기는 long>int>short>byte 순이다.
                      보통은 int형과 long형을 많이 쓴다. long형을 쓸때는
                      맨뒤에 영문자 L을 붙여야 한다.
            -실수형
                float floatType=3.4028235E38F;
                double doubleType=1.7976931348623157E308;
                    - 실수형은 두가지가 있다. float와 double은 크기가 각각
                      4, 8byte로 int와 long형과 동일하다. 하지만 좀더 넓은
                      표현이 가능하다. 소수점이 표현되기 때문이다.

                      실수형에서 float에도 저장하려는 값 뒤에 F를 붙여주어야한다.

*/ 

       // 변수 선언 및 초기화
       // 10dmf a변수에 초기화 해보자.     
       int a=10;
       
       // true값을 b변수에 초기화 해보자.
       boolean b=true;

       // 'a'라는 문자를 c변수에 초기화 해보자.
       char c='a';
       
       //"안녕하세요"라는 문자를 d 변수에 초기화 해보자.
       // 두글자 이상은 string으로 값을 저장한다. (큰 따옴표 "" 를 사용함.)
       /* javascript에서는 문자나 문자열의 차이가 없다.하지만 java는 문자와 문자열에 차이가 발생한다.
          
          문자와 문자열의 차이
        
          문자                      문자열(문자+배열)
          한 글자인 문자              한 글자 이상인 문자
        ex) a,b,c                    안녕, 안녕하세요 등
          
          char                       string
          작은 따옴표 묶음            큰 따옴표 묶음
       
       String d="안녕하세요";
       // java overflow 

        */
        /*  
        java 언어에서는 datatype 이라는것이 존재한다.
          overflow란 java에서 산술연산을 할 경우 해당 변수의 자료형 표현 범위를 초과할 경우 
          쓰레기값이 발새오디는 경우를 말한다.
       */
       
       // 100000000000을 e변수에 초기화 해보자 (long)
       long e=100000000000L;

       // 원주율 3.14159값을 f변수에 초기화 해보자
       float f=3.14F;
    
    

    }
}
