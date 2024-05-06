/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;
import Modelo.Person;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Esteban
 */
public class pruebas {
    public static void main(String[] args) {
        try {
            Controlador control = new Controlador();
            //control.registerUser("adm0", "0", "adm@gmail.com", 1, "0", "adm", "0", null, null, 1, "01-05-2024");
            control.updatePlatforms();
            control.insertPlatform("Netflix", null);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
