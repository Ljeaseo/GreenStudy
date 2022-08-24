package study_baekjoon;
   
public class Study_K {
       
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
    
            int N = sc.nextInt();
            int K = sc.nextInt();
            int [] arr = new int[N];
            
            for(int i=0; i<N; i++){
                arr[i] = sc.nextInt();
            }
    
            int ans = -1;
            TreeSet<lnteger> set =  new TreeSet<>(Collections. reverseOder());
    
            for(int i=0; i<N; i++){
                for(int j=i+1; j<N ; j++){
                    for(int l=j+1; l<N; l++){
                        set.add(arr[i]+arr[j]+arr[l]);
                    }
                }
            }
    
            int cnt = 0;
            for(int x : set){
                cnt ++;
                if(cnt == K){
                    ans = x;
                    break;
                }
            }
            System.out.println(ans+" ");
        }  
      
}
    
