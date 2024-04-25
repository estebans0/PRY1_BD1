/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Esteban
 */
public class sysConexion {
    public static Connection obtConexion() {
        try{
            // Esto se tiene que cambiar de acuerdo a la info de la BD de cada quien
            String myDB = "jdbc:oracle:thin:@//localhost:1521/DB1";
            String user = "PRY";
            String password = "pry";
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            java.sql.Connection connection = DriverManager.getConnection(myDB, user, password);
            return connection;
        } catch(SQLException e){
            System.out.println("El error es: " + e);
            return null;
        }
    }
}
