/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.alejandro_trabajo_en_clase2;

/**
 *
 * @Alejandro Castellano
 */
public class Alejandro_Trabajo_en_Clase2 {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        
        int entero = 7;
        double decimal = entero;
        double precio = 9.99;
        int truncado = (int) precio;
        int edad = Integer.parseInt("19");
        double nota = Double.parseDouble("8.5");
        String texto = String.valueOf(42);

        System.out.println(entero);
        System.out.println(decimal);
        System.out.println(precio);
        System.out.println(truncado);
        System.out.println(edad);
        System.out.println(nota);
        System.out.println(texto);
        
        String textiado = "Programacion";
        System.out.println(textiado);
        
        System.out.println(textiado.equalsIgnoreCase("programacion"));
        System.out.println(textiado.equalsIgnoreCase("prograMacion"));
        
        
        System.out.println(textiado.contains("macion"));
        System.out.println(textiado.charAt(0));
        System.out.println(textiado.charAt(1));
        System.out.println(textiado.charAt(2));
        System.out.println(textiado.charAt(3));
        System.out.println(textiado.charAt(4));
        System.out.println(textiado.charAt(5));
        System.out.println(textiado.charAt(6));
        System.out.println(textiado.charAt(7));
        System.out.println(textiado.charAt(8));
        System.out.println(textiado.charAt(9));
        System.out.println(textiado.charAt(10));
        System.out.println(textiado.charAt(11));
        
        int contador = 0;
        contador++;            // suma 1
        contador += 5;          // suma 5 Total 6

        System.out.println(contador);

        int x = 10;
        x--;                   // resta 1 : x = 9
        x *= 2;                 // multiplica * 2 : Total = 18

        System.out.println(x);


        // && y
        // || o
        // ! no
        // true / false
        // c ? a:b  ternario
        
        
        int age = 25;
        boolean matriculade = true;
        
        boolean puedeVotar = age >= 16 && matriculade;
        System.out.println(puedeVotar);
        
        System.out.println(!matriculade || edad > 30);
        
        String estado = (age >= 18) ? "adulto" : "menor";
        System.out.println(estado);
        
        String clave = "puce2026";
        String parte = "puce";
        String escrita = parte + 2026;
        
        System.out.println(escrita);
        System.out.println(escrita == clave);
        System.out.println(escrita.equals(clave));
        
        
        double note = 8.4;
        
        if (note >= 9){
            System.out.println("Sobresaliente");
        } else if(nota >= 7) {
            System.out.println("Aprobado");
        } else if(nota>=5) {
            System.out.println("Supletorio");
        } else {
            System.out.println("Reprobado");
        }
        
        String tipo = switch (dia) {
            case 1, 2, 3, 4, 5 -> "Laborable";
            case 6, 7 -> "Fin de semana";
            default -> "Dia invalido";
        };

                int saldo = 100;
        while (saldo > 0) {
            saldo -= 30;
        }
        System.out.println(saldo);      // -20  
        
        System.out.println("----------------");
        
        for (int i = 1; i <= 10; i++) {
        System.out.println(i + " ");
        }
        
        System.out.println("----------------");
        
        for (int i = 0; i < 5; i++) {
        System.out.println(i + " ");
        }
        
        System.out.println("----------------");
                
        for (int i = 1; i <= 5; i++) {
        System.out.println(i + " ");
        }
        
        System.out.println("----------------");
        
        for (int i = 10; i > 0; i -=3 ) {
        System.out.println(i + " ");
        }
        
        System.out.println("----------------");
        
        for (int i = 0; i < 20; i += 5 ) {
        System.out.println(i + " ");
        }

        int suma = 0;
        for (int i = 1; i <= 10; i++) {
            if (i % 2 == 0) {
                continue;
            }
            if (i > 7) {
                break;
            }
            suma += i;
        }

        System.out.println(suma);
        
        for (int i = 0; i < 3; i ++){
            System.out.println(i);
        }
        System.out.println(i); //x

    }
   
}

