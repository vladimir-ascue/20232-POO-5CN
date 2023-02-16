public class pablito {
    // CONTEXTO (SCOPE): Es el espacio de ejcución comprendido entre
    // las llaves de apertura y cierre de un bloque de código
        // inicia: {
        // temina: }
    // Los contextos pueden entregar su variables y métodos a otros
    // contextos que tenga dentro
    // Anidar: La andación es colocar bloques de codigo dentro de otros
    // Indentado: Es el Sangria izquierda inicial, demarca la posicion
    //            de un bloque de codigo respecto del que lo contiene
    // Variables de contexto o bloque: Existen solo dentro del contexto
    //                                 en el cual fueron creadas
    static String nombre; // Declaración de variable
    static Boolean flag = true; // Declaración de variable + Asignacaion de Valor
    static String apellido = null;

    // El método main es ESTÁTICO - No aceptan variable ni método NO ESTÁTICOS
    public static void main(String[] args) {
        System.out.println("Hello world!");
        // los cntextos del for 1 y el for 2 tienen la misma jererquia estan a la misma altura
        // for 1
        for (int i = 0; i < 15; i++) {
            // Instruccion para imprimir en pantalla con un salto de linea
            System.out.println(nombre);
            // Instruccion para imprimir en pantalla sin salto de linea
            System.out.print(flag);
            apellido = "Vladimir";
        }
        // for 2
        for (int i = 0; i < 15; i++) {

        }

    }
}



