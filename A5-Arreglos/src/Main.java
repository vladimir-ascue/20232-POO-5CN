import java.util.Scanner;

public class Main {
    public static void mostrarCalendario(int dias, int diaini){
        for (int i = 1; i <= diaini; i++) {
            System.out.println(" . ");
        }
        for (int i = 1; i <= dias; i++) {
            System.out.println(" "+i+" ");
        }
    }
    public static void calendario(int mes){
        int[] dias = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 12};
        int[] iniMes = { 0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5 };
        System.out.println(" D   L   M   M   J   V   S");
        switch (mes){
            case 1:
                mostrarCalendario(dias[mes], iniMes[mes]);
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            case 10:
                break;
            case 11:
                break;
            case 12:
                break;
            default:
                System.out.println("Error: Ese mes no existe");
                break;
        }
    }

    public static void main(String[] args) {
        int mes = new Scanner(System.in).nextInt();
        calendario(mes);

        int [][] arreglo = { {0,2,5,6}, {2,4,6,5}, {3,6}, {5,87}, {5,2} };

        //0 2
        //2 4
        //3 6
        //5 87
        // 5 2

        //      indice     0  1  2  3  4   Posición
        //      tamaño     5
        //      tamaño = indiceMayor + 1
        //      indiceMayor = tamaño - 1

        String nombres [];
        double [] edades = new double[5];

        for (int i = 0; i < arreglo.length; i++) {
            System.out.print("{ ");
            for (int j = 0; j < arreglo[i].length; j++) {
                if(j == arreglo[i].length - 1)
                    System.out.print( arreglo[i][j] + " " );
                else
                    System.out.print( arreglo[i][j] + ", "  );
//                System.out.print(",");
            }
            System.out.println("}");
        }
        // { d1, d2 }
        /*
        * double != Double
        *
        double edad = 45;
        Double otraEdad = new Double("45");
        */
    }
}