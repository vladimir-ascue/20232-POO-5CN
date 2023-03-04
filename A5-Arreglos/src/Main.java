public class Main {
    public static void main(String[] args) {
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