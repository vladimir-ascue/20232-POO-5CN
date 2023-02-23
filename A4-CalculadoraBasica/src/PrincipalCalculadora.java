import java.util.Scanner;

public class PrincipalCalculadora {
    public static void menu(){
        System.out.println("0- Salir");
        System.out.println("1- Sumar");
        System.out.println("2- Restar");
        System.out.println("3- Multiplicar");
        System.out.println("4- Dividir");
        System.out.print("   >> Ingrese una opción: ");
    }

    public static int suma(int num1, int num2){
        return num1 + num2;
    }

    public static void main(String[] args) {
        int opcion;
        do {
            menu();
            opcion = new Scanner(System.in).nextInt();
            switch (opcion){
                case 0:
                    System.out.print(" Adios. Vuelve pronto ...");
                    break;
                case 1:
                    System.out.println(" VAMOS A SUMAR ");
                    break;
                case 2:
                    System.out.println(" VAMOS A RESTAR ");
                    break;
                case 3:
                    System.out.println(" VAMOS A MULTIPLICAR ");
                    break;
                case 4:
                    System.out.println(" VAMOS A DIVIDIR ");
                    break;
                default:
                    System.out.print("Opcion inválida. Intentelo nuevamente: ");
                    break;
            }
        } while( opcion != 0 );
    }
}
