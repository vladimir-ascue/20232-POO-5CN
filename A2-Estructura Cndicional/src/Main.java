import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
//        int edad = 18;
//        if( edad < 18 ){
//            System.out.println("ELERTA ... FUGA.. FUGA ... FUGA ....");
//        }else{
//            System.out.println("Con fe no mas ...");
//        }
        // CASESENSITYVE =
        // String nombre = "Karen";
        // if( nombre == "Karen"){
        // if(nombre.compareTo("karen") == 0){
        // Recomendada por el profe
//        if(nombre.equals("Karen")){
//            System.out.println(" :'( ");
//        }else{
//            System.out.println(" :P ");
//        }
//
//        String dato = "";
//
//        if ( dato.equals("")){
//            System.out.println("Es una cadena vacia");
//        }else{
//            System.out.println("No es una cadena vacia");
//        }
        System.out.println("*******************");
        System.out.print("Ingrese su edad: "); // Promt >> Mensaje para indicar que hacer
        int edad = 0;
        int cont = 1;
        do {
            try {
                edad = new Scanner(System.in).nextInt();
            } catch (Exception e) {
                e.printStackTrace();
            }
            cont++;
        }while(cont == 3);
//        edad = new Scanner(System.in).nextInt();
//        System.out.println("Tu edad es: " + edad);

        // 17 > Debes sacara tu LM
        // 18 - 20 > Te pasaste sera ultado
        // 21 a más > Eres omiso irás a prision
        if( ( edad >  0 ) && ( edad < 17 ) ){ // ||
            System.out.println("Eres mu chibolo(a)");
        }else{
            if(edad > 17){
                System.out.println("Debes sacara tu LM");
            }else{
                if( edad <= 20 ){
                    System.out.println("Te pasaste sera ultado");
                }else{
                    System.out.println("Eres omiso irás a prision");
                }
            }
        }
    }
}