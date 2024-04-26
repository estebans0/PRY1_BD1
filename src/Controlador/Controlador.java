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

/**
 *
 * @author Esteban
 */
public class Controlador {
    // Atributos
    private final UserManager usrManager = new UserManager();
    
    // Métodos de usuario
    public void updateUsers() throws SQLException {
        usrManager.setUsers();
    }
    
    public ArrayList<User> getUsers() {
        return usrManager.getUsers();
    }
    
    public int getCurrentUserId() {
        return usrManager.getCurrentUserId();
    }
    
    public void setCurrentUserId(int id) {
        usrManager.setCurrentUserId(id);
    }
    
    public int verifyUserLogin(String username, String password) throws SQLException {
        return usrManager.verifyUserLogin(username, password);
    }
    
    public void printUsers() {
        usrManager.printUsers();
    }
}
