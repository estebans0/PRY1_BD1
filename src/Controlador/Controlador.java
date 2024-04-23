/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.sql.CallableStatement;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Esteban
 */
public class Controlador {
    private final UserManager usrManager = new UserManager();
    
    public int getCurrentUserId() {
        return usrManager.getCurrentUserId();
    }
    
    public void setCurrentUserId(int id) {
        usrManager.setCurrentUserId(id);
    }
    
    public int verifyUserLogin(String username, String password) throws SQLException {
        return usrManager.verifyUserLogin(username, password);
    }
}
