package study_group;


import java.util.Scanner;
public class study_group_00 {
    public static void main(String[] args)  {
       
        Scanner sc = new Scanner(System.in); 

        String word =sc.nextLine();
        String change="";                   
        byte[] bytes = word.getBytes();        //문자열을 입력하면 배열에다 각 한문자씩 저장
        
        for(int i = 0; i<bytes.length; i++){
            
           int plus= bytes[i]+3;               // 각배열에 저장된 문자들을 아스키코드로 바꾸면서 +3을 해줌.
           char ch = (char)plus;               //+3된 아스키코드를 다시 문자로 바꿈
           
           if(ch==35){
             ch-=3;
           }
           
           change += Character.toString(ch);
        }
        System.out.println(change);       
        
        //--------복호화--------------------//
        
        char[] ch2=change.toCharArray();        //string을 다시 char[]로 바꿈
        String change2="";             
        for(int j=0;j<ch2.length;j++){
            
            int minus = ch2[j]-3;               //암호화된 문자를 다시 원래대로 -3 해줌
            char ch3 = (char)minus;
            if(ch3==29){
                ch3+=3;
            }
            change2 += Character.toString(ch3); 
        }
        
        System.out.println(change2);       
    
    }
}

       
           
    
         


       

