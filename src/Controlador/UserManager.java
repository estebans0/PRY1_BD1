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
    private Map<Integer, User> users;
    
    // Constructor
    public UserManager() { // Constructor sin ingresar id
        this.currentUserId = 0;
        this.users = new HashMap<>();
    }
    public UserManager(int currentUserId) { // Constructor con id
        this.currentUserId = currentUserId;
        this.users = new HashMap<>();
    }
    
    // Setters y Getters
    public int getCurrentUserId() {
        return currentUserId;
    }

    public Map<Integer, User> getUsers() {
        return users;
    }

    public void setCurrentUserId(int currentUserId) {
        this.currentUserId = currentUserId;
    }

    public void setUsers(Map<Integer, User> users) {
        this.users = users;
    }

    // Método para obtener un usuario por su id
    public User getUser(int id) {
        return users.get(id);
    }

    // Método para verificar el inicio de sesión de un usuario
    public int verifyUserLogin(String username, String password) throws SQLException {
        java.sql.Connection conn = sysConexion.obtConexion();
        CallableStatement sql = conn.prepareCall("{? = call verifyUserLogin(?,?)}");
        sql.registerOutParameter(1, OracleTypes.INTEGER);
        sql.setString(2, username);
        sql.setString(3, password);
        sql.execute();
        int idUser = (int) sql.getObject(1);
        this.currentUserId = idUser;
        return idUser;
    }

    // Método para registrar un nuevo usuario
    public void registerUser(String username, String password, String email, String gender) {
        int userId = ++currentUserId;
        User newUser = new User(userId, username, password, email, gender);
        users.put(userId, newUser);
    }

    // Método para otorgar el rol de administrador a un usuario por su id
    public void makeAdmin(int id) {
        User user = users.get(id);
        if (user != null) {
            user.setIs_admin(true);
        }
    }

    // Método para obtener el usuario actualmente logueado
    public User getCurrentUser() {
        return users.get(currentUserId);
    }

    // Método para obtener todos los usuarios
    public List<User> getAllUsers() {
        return new ArrayList<>(users.values());
    }
}
