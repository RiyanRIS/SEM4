import java.util.Scanner;
public class P3_Larik2{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        String  nama, nim, jurusan, def="Masukan ";
        int jum_matkul;
        System.out.println("================================");
        System.out.println("|  MENGHITUNG NILAI MAHASISWA  |");
        System.out.println("================================");
        // -------------
        System.out.println("================================");
        System.out.print(" Jumlah Mata Kuliah :  ");
        jum_matkul = input.nextInt();
        System.out.println("================================");
        input.nextLine();
        System.out.print(def + "Nama \t\t: " );
        nama = input.nextLine();
        System.out.print(def + "NIM \t\t: " );
        nim = input.nextLine();
        System.out.print(def + "Jurusan \t: " );
        jurusan = input.nextLine();
        System.out.println("================================\n");
        String matkul[] = new String[jum_matkul-1];
        float nilai[] = new float[1];
        float uts,uas;

        for(int a = 0;a<=jum_matkul-1;a++){
            System.out.print("Mata kuliah Ke "+ (a+1) +": \t");
            matkul[a] = input.nextLine();
            System.out.print("Nilai UTS \t: " );
            uts = input.nextFloat();
            System.out.print("Nilai UAS \t: " );
            uas = input.nextFloat();
            nilai[a] = (uts+uas)/2;
            input.nextLine();
        }

        System.out.println("==================================");
        System.out.println("| Nama : "+ nama +" \t NIM : "+ nim +" |");
        System.out.println("==================================");
        System.out.println("Mata Kuliah \t Nilai \t Grade");
        System.out.println("==================================");
        for(int a = 0;a<=jum_matkul-1;a++){
            char grade;
            if(nilai[a]>85){
                grade = 'A';
            }else if(nilai[a]>60){
                grade = 'B';
            }else{
                grade = 'C';
            }
            System.out.println(matkul[a]+"\t"+nilai[a]+"\t"+grade);
        }
        
    }

}