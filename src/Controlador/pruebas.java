/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;
import java.sql.SQLException;

/**
 *
 * @author Esteban
 */
public class pruebas {
    public static void main(String[] args) {
        try {
            Controlador control = new Controlador();
            control.updateUsers();
            control.printUsers();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
