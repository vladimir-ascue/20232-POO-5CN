import java.util.Scanner;

public class Main {

    public static int leerEntero(String promt){
        int entero = -1;
        int cont = 0;
        do{
            try {
                System.out.print(promt+": ");
                entero = new Scanner(System.in).nextInt();
                cont = 3;
            } catch (Exception e) {
                System.out.println("Talla debe ser un numero entero mayor a 0, intentelo nuevamente: ");
                cont++; // cont = cont + 1
            }
        } while(cont != 3); // este while temrina cuando cont = 3
        return entero;
    }

//    NO FUNCIONARA BIEN EN CASOS DE INGRESAR DATOS ERRONEOS
//    public static int leerEntero2(String promt){  // No funciona correctamente
//        int cont = 0;
//        do{
//            try {
//                System.out.print(promt+": ");
//                return new Scanner(System.in).nextInt();
//            } catch (Exception e) {
//                System.out.println("Talla debe ser un numero entero mayor a 0, intentelo nuevamente: ");
//                cont++; // cont = cont + 1
//                return 0; // Falla
//            }
//        } while(cont != 3); // este while temrina cuando cont = 3
//    }

    public static void main(String[] args) {
        // Contratacion de personal
        int edad = leerEntero("Edad");

        if( edad >= 0 ) {
            if ((edad >= 18) && (edad < 45)) {
                System.out.println("Es contratable");
            } else {
                if (edad < 18) {
                    System.out.println("Muy huahua ...");
                } else {
                    System.out.println("Ya ta pasita ...");
                }
            }
        }else{
            System.out.println("El dato ingresado no es un entero positivo");
        }

        int talla = leerEntero("Talla");

        int peso = leerEntero("Peso");
        System.out.println(" *************** ");
        System.out.println("Edad: "+edad);
        System.out.println("Talla: "+talla);
        System.out.println("Peso: "+peso);

//        int cont = 1;
//        do{
//            try {
//                System.out.print("Edad: ");
//                edad = new Scanner(System.in).nextInt();
//            } catch (Exception e) {
//                System.out.println("Edad debe ser un numero entero mayor a 0, intentelo nuevamente: ");
//            }
//            cont++;
//        }while(cont == 3);
//        int talla = 0;
//        cont = 0;
//        do{
//            try {
//                System.out.print("Talla: ");
//                talla = new Scanner(System.in).nextInt();
//            } catch (Exception e) {
//                System.out.println("Talla debe ser un numero entero mayor a 0, intentelo nuevamente: ");
//            }
//            cont++;
//        }while(cont != 3);
//        int peso = 0;
//        cont = 1;
//        do{
//            try {
//                System.out.print("Peso: ");
//                peso = new Scanner(System.in).nextInt();
//            } catch (Exception e) {
//                System.out.println("Peso debe ser un numero entero mayor a 0, intentelo nuevamente: ");
//            }
//            cont++;
//        }while(cont == 3);


    }
}