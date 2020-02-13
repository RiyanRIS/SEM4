public class Coba
// LATIHAN 3 - GANTI DO-WHILE
{
    public static void main(String[] args) {
        int x = 5;
        for (int i = 1; i <= x; i++){
            for (int j = 4; j >= i; j--){
                System.out.print(' ');
            }
            for (int k = 1; k <= i; k++){
                System.out.print('*');
            }
            for (int l = 1; l <= i - 1; l++){
                System.out.print('*');
            }
        System.out.println();
        }

        System.out.println();System.out.println();
        // x=a,i=b,j=c,k=d,l=e,
        int a = 4,b=0;
        do{
            int c=4;
            do{
                System.out.print(' ');
                c--;
            }while(c>=b);
            int d = 1;
            do{
                System.out.print('*');
                d++;
            }while(d<=b);
            int e = 1;
            do{
                if(b==0){
                    System.out.print(' ');
                }else{
                    System.out.print('*');
                }
                e++;
            }while(e<b+2);

            b++;
            System.out.println();
        }while(b<=a);

    }
}