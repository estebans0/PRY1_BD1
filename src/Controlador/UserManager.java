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
import javax.swing.table.DefaultTableModel;
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

    public void updateUsers(java.sql.Connection conn) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        users.clear();
        CallableStatement sql = conn.prepareCall("{call getUsersData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
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
    
    public void registerUser(java.sql.Connection conn, String user, String pass, String email, int idType, String legalId) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        PreparedStatement sql = conn.prepareStatement("{call insertUser(?,?,?,?,?)}");
        sql.setString(1, user);
        sql.setString(2, pass);
        sql.setString(3, email);
        sql.setInt(4, idType);
        sql.setString(5, legalId);
        sql.execute();
    }

    // Método para obtener un usuario por su id
    public User getUser(int id) {
        return users.get(id);
    }

    // Método para verificar el inicio de sesión de un usuario
    public int verifyUserLogin(String username, String password) throws SQLException {
        // 0=regularUser, 1=admin, -1=notUser
        for (User user : users) {
            if (user.getUserName().equals(username) && user.getPassword().equals(password)) {
                this.currentUserId = user.getId();
                return user.getIsAdmin();
            }
        }
        return -1;
    }
    
    // Método para obtener una lista con solo los usuarios de un tipo (regular, admin, other)
    public ArrayList<User> getUsersByType(int type) {
        ArrayList<User> filteredUsers = new ArrayList<>();
        for (User user : users) {
            if (user.getIsAdmin() == type) {
                filteredUsers.add(user);
            }
        }
        return filteredUsers;
    }
    
    // Método para crear una tabla con los datos de usuarios existentes por tipo
    public DefaultTableModel showUsersTable(int userType) {
        Object [] header = {"ID", "Username"};
        ArrayList<User> usersLst = getUsersByType(userType);
        DefaultTableModel table = new DefaultTableModel(header, usersLst.size());
        for (int i = 0; i < table.getRowCount(); i++) {
            User user = usersLst.get(i);
            table.setValueAt(user.getId(), i, 0);
            table.setValueAt(user.getUserName(), i, 1);
        }
        return table;
    }

    // Método para otorgar/eliminar el rol de admin a un usuario por su id
    public int makeOrRemoveAdmin(java.sql.Connection conn, int id, int type) throws SQLException {
        if (type == 0 && currentUserId == id) {
            return -1; // No permite eliminarse a sí mismo como admin
        }
        PreparedStatement sql = conn.prepareStatement("{call makeOrRemoveAdmin(?, ?)}");
        sql.setInt(1, id);
        sql.setInt(2, type);
        sql.execute();
        return 1;
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
