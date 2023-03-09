import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int numero = new Scanner(System.in).nextInt();

        int unidades = numero % 10;
        int decenas = ( numero / 10 ) % 10;
        int centenas = ( numero /100 ) % 10;

        System.out.println("Unidades: " + unidades);
        System.out.println("Decenas: " + decenas);
        System.out.println("Centenas: " + centenas);

    }
}