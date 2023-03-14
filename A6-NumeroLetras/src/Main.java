import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    
    public static String unidades(int unidades){
        String unidadesTexto = "";
        switch (unidades){
            case 1: unidadesTexto =  "uno"; break;
            case 2: unidadesTexto =  "dos"; break;
            case 3: unidadesTexto =  "tres"; break;
            case 4:unidadesTexto =  "cuatro";break;
            case 5:unidadesTexto =  "cinco";break;
            case 6:unidadesTexto =  "seis";break;
            case 7:unidadesTexto =  "siete";break;
            case 8:unidadesTexto =  "ocho";break;
            case 9:unidadesTexto =  "nueve";break;
        }
        return unidadesTexto;
    }
    public static String decenas(int decenas){
        String decenasTexto = "";
        switch (decenas){
            case 1: decenasTexto =  "dieci "; break;
            case 2: decenasTexto =  "veinte y "; break;
            case 3: decenasTexto =  "treinta y "; break;
            case 4: decenasTexto =  "cuarenta y ";break;
            case 5: decenasTexto =  "cincuenta y ";break;
            case 6: decenasTexto =  "sesenta y ";break;
            case 7: decenasTexto =  "setenta y ";break;
            case 8: decenasTexto =  "ochenta y ";break;
            case 9: decenasTexto =  "noventa y ";break;
        }
        return decenasTexto;
    }
    public static String centenas(int centenas){
        String centenasTexto = "";
        switch (centenas){
            case 1: centenasTexto =  "ciento "; break;
            default:
                centenasTexto = unidades(centenas) + "cientos ";
                break;
        }
        return centenasTexto;
    }

    public static String enLetras(int numero){
        int unidades = numero % 10;
        int decenas = ( numero / 10 ) % 10;
        int centenas = ( numero /100 ) % 10;

        if((unidades == 0) && (decenas == 0)){
            System.out.println("Cien");
        }else{
            if( decenas == 0 && unidades == 0 && centenas == 0)
                System.out.println(centenas(centenas) + unidades(unidades));
        }


        return "";
    }

    public static void main(String[] args) {
        int numero = new Scanner(System.in).nextInt();

        System.out.println(enLetras(num));

    }
}