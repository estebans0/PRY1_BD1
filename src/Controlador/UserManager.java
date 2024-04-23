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
/**
 *
 * @author esteb
 */
public class UserManager {
    // Atributos
    private int currentUserId;
    private Map<Integer, User> users;
    
    // Métodos
    public UserManager() { // Constructor sin ingresar id
        this.currentUserId = 0;
        this.users = new HashMap<>();
    }
    public UserManager(int currentUserId) { // Constructor con id
        this.currentUserId = currentUserId;
        this.users = new HashMap<>();
    }

    // Método para obtener un usuario por su id
    public User getUser(int id) {
        return users.get(id);
    }

    // Método para verificar el inicio de sesión de un usuario
    public boolean verifyUserLogin(String username, String password) {
        for (User user : users.values()) {
            if (user.getUserName().equals(username) && user.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

    // Método para registrar un nuevo usuario
    public void registerUser(String username, String password, String email) {
        int userId = ++currentUserId;
        User newUser = new User(userId, username, password, email);
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
