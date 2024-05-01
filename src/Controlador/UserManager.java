/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import Modelo.User;
import com.sun.jdi.connect.spi.Connection;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;
import java.sql.*;
/**
 *
 * @author esteb
 */
public class UserManager {
    // Atributos
    private int currentUserId;
    private ArrayList<User> users;
    
    // Constructor
    public UserManager() {
        this.currentUserId = 0;
        this.users = new ArrayList<>();
    }
    
    // Setters y Getters
    public int getCurrentUserId() {
        return currentUserId;
    }

    public ArrayList<User> getUsers() {
        return users;
    }

    public void setCurrentUserId(int currentUserId) {
        this.currentUserId = currentUserId;
    }

    public void setUsers() throws SQLException {
        java.sql.Connection conn = sysConexion.obtConexion();
        Statement statement = conn.createStatement();
        CallableStatement sql = conn.prepareCall("{call getUsersData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
        // Esta ingresando IdType como LegalId y isAdmin como idType 
        // y no entiendo por que
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUserName(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setLegalId(rs.getString("legal_id"));
            user.setIdType(rs.getInt("id_type"));
            user.setIsAdmin(rs.getInt("user_type"));
            users.add(user);
        }
    }

    // Método para obtener un usuario por su id
    public User getUser(int id) {
        return users.get(id);
    }

    // Método para verificar el inicio de sesión de un usuario
    public int verifyUserLogin(String username, String password) throws SQLException {
        // 1=admin, 0=regularUser, -1=notUser
        for (User user : users) {
            if (user.getUserName().equals(username) && user.getPassword().equals(password)) {
                this.currentUserId = user.getId();
                return user.getIsAdmin();
            }
        }
        return -1;
    }

    // Método para registrar un nuevo usuario
    public void registerUser(String username, String password, String email, String gender) {
        int userId = ++currentUserId;
        User newUser = new User();
        users.add(newUser);
    }

    // Método para otorgar el rol de administrador a un usuario por su id
    public void makeAdmin(int id) {
        User user = users.get(id);
        if (user != null) {
            user.setIsAdmin(1);
        }
    }

    // Método para obtener el usuario actualmente logueado
    public User getCurrentUser() {
        return users.get(currentUserId);
    }
    
    public void printUsers(){
        for (User user : users) {
            System.out.println(user.toString());
        }
    }
}
