/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.User;
import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import oracle.jdbc.OracleTypes;
import java.sql.*;

/**
 *
 * @author Esteban
 */
public class Controlador {
    // Atributos
    private final PersonManager personMng = new PersonManager();
    private final UserManager userMng = new UserManager();
    private final java.sql.Connection conn = sysConexion.obtConexion();
    
    // Métodos de usuario
    public void updateUsers() throws SQLException {
        userMng.updateUsers(conn);
    }
    
    public void registerPerson(String fName, String lName, String mName, String nName, 
            int gender, String dob) throws SQLException {
        personMng.registerPerson(conn, fName, lName, mName, nName, gender, dob);
    }
    
    public void registerUser(String user, String pass, String email, int idType, 
            String legalId, String fName, String lName, String mName, String nName, 
            int gender, String dob) throws SQLException {
        registerPerson(fName, lName, mName, nName, gender, dob);
        userMng.registerUser(conn, user, pass, email, idType, legalId);
    }
    
    public ArrayList<User> getUsers() {
        return userMng.getUsers();
    }
    
    public int getCurrentUserId() {
        return userMng.getCurrentUserId();
    }
    
    public void setCurrentUserId(int id) {
        userMng.setCurrentUserId(id);
    }
    
    public int verifyUserLogin(String username, String password) throws SQLException {
        return userMng.verifyUserLogin(username, password);
    }
    
    public void printUsers() {
        userMng.printUsers();
    }
}
