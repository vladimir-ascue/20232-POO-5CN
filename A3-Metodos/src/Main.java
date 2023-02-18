import java.util.Scanner;

public class Main {

    public static int leerEntero(String promt){
        int entero = 0;
        int cont = 0;
        do{
            try {
                System.out.print(promt+": ");
                entero = new Scanner(System.in).nextInt();
            } catch (Exception e) {
                System.out.println("Talla debe ser un numero entero mayor a 0, intentelo nuevamente: ");
            }
            cont++;
        }while(cont != 3);
        return entero;
    }

    public static void main(String[] args) {
        int edad = leerEntero("Edad");
        int talla = leerEntero("Talla");
        int peso = leerEntero("Peso");
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

        System.out.println("Edad: "+edad);
        System.out.println("Talla: "+talla);
        System.out.println("Peso: "+peso);
    }
}