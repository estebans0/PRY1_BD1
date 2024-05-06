/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Country;
import Modelo.Gender;
import Modelo.Platform;
import Modelo.ProdCompany;
import java.util.ArrayList;
import Modelo.User;
import Modelo.genre;
import com.sun.jdi.connect.spi.Connection;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;
import java.sql.*;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author esteb
 */
public class UserManager {
    // Atributos
    private int currentUserId;
    private ArrayList<User> users;
    private ArrayList<Country> countries;
    private ArrayList<Gender> genders;
    private ArrayList<genre> genres;
    private ArrayList<ProdCompany> prodCompanies;
    private ArrayList<Platform> platforms;
    
    // Constructor
    public UserManager() {
        this.currentUserId = 0;
        this.users = new ArrayList<>();
        this.countries = new ArrayList<>();
        this.genders = new ArrayList<>();
        this.genres = new ArrayList<>();
        this.prodCompanies = new ArrayList<>();
        this.platforms = new ArrayList<>();
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
    
    // Métodos para user de tipo ADMIN ------------------------------------------------------------------------------------
    // ******************************* Country data management *******************************
    public int getCountryId(String name){
        for (Country country : countries) {
            if (country.getName().equals(name)) {
                return country.getId();
            }
        }
        return -1;
    }
    
    public boolean countryAlreadyExists(String countryName) {
        for (Country country : countries) {
            if (country.getName().toLowerCase().equals(countryName.toLowerCase())) {return true;}
        }
        return false;
    }
    
    public DefaultComboBoxModel makeCountriesList() {
        ArrayList<String> countryNames = new ArrayList<>();
        countryNames.add("Select country");
        for (Country country : countries) {
            countryNames.add(country.getName());
        }
        DefaultComboBoxModel<String> countriesList = new DefaultComboBoxModel<>(countryNames.toArray(String[]::new));
        return countriesList;
    }
    
    public void updateCountries(java.sql.Connection conn) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        countries.clear();
        CallableStatement sql = conn.prepareCall("{call getCountriesData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            Country country = new Country();
            country.setId(rs.getInt("id"));
            country.setName(rs.getString("name"));
            countries.add(country);
        }
    }
    
    public void insertCountry(java.sql.Connection conn, String countryName) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        PreparedStatement sql = conn.prepareStatement("{call insertCountry(?)}");
        sql.setString(1, countryName);
        sql.execute();
    }

    public void editCountryName(java.sql.Connection conn, String currName, String newName) throws SQLException {
        int countryId = getCountryId(currName);
        PreparedStatement sql = conn.prepareStatement("{call editCountryName(?, ?)}");
        sql.setInt(1, countryId);
        sql.setString(2, newName);
        sql.execute();
    }
    
    // ******************************* Gender data management *******************************
    public int getGenderId(String name){
        for (Gender gender : genders) {
            if (gender.getName().equals(name)) {
                return gender.getId();
            }
        }
        return -1;
    }
    
    public boolean genderAlreadyExists(String name) {
        for (Gender gender : genders) {
            if (gender.getName().toLowerCase().equals(name.toLowerCase())) {return true;}
        }
        return false;
    }
    
    public DefaultComboBoxModel makeGendersList() {
        ArrayList<String> genderNames = new ArrayList<>();
        genderNames.add("Select gender");
        for (Gender gender : genders) {
            genderNames.add(gender.getName());
        }
        DefaultComboBoxModel<String> gendersList = new DefaultComboBoxModel<>(genderNames.toArray(String[]::new));
        return gendersList;
    }
    
    public void updateGenders(java.sql.Connection conn) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        genders.clear();
        CallableStatement sql = conn.prepareCall("{call getGendersData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            Gender gender = new Gender();
            gender.setId(rs.getInt("id"));
            gender.setName(rs.getString("name"));
            genders.add(gender);
        }
    }
    
    public void insertGender(java.sql.Connection conn, String name) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        PreparedStatement sql = conn.prepareStatement("{call insertGender(?)}");
        sql.setString(1, name);
        sql.execute();
    }

    public void editGenderName(java.sql.Connection conn, String currName, String newName) throws SQLException {
        int genderId = getGenderId(currName);
        PreparedStatement sql = conn.prepareStatement("{call editGenderName(?, ?)}");
        sql.setInt(1, genderId);
        sql.setString(2, newName);
        sql.execute();
    }
    
    // ******************************* Genre data management *******************************
    private int getGenreId(String name){
        for (genre gen : genres) {
            if (gen.getName().equals(name)) {
                return gen.getId();
            }
        }
        return -1;
    }
    
    public boolean genreAlreadyExists(String name) {
        for (genre gen : genres) {
            if (gen.getName().toLowerCase().equals(name.toLowerCase())) {return true;}
        }
        return false;
    }
    
    public DefaultComboBoxModel makeGenresList() {
        ArrayList<String> genreNames = new ArrayList<>();
        genreNames.add("Select genre");
        for (genre gen : genres) {
            genreNames.add(gen.getName());
        }
        DefaultComboBoxModel<String> genresList = new DefaultComboBoxModel<>(genreNames.toArray(String[]::new));
        return genresList;
    }
    
    public void updateGenres(java.sql.Connection conn) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        genres.clear();
        CallableStatement sql = conn.prepareCall("{call getGenresData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            genre gen = new genre();
            gen.setId(rs.getInt("id"));
            gen.setName(rs.getString("name"));
            gen.setDescription(rs.getString("characteristics"));
            genres.add(gen);
        }
    }
    
    public void insertGenre(java.sql.Connection conn, String name, String description) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        PreparedStatement sql = conn.prepareStatement("{call insertGenre(?, ?)}");
        sql.setString(1, name);
        sql.setString(2, description);
        sql.execute();
    }

    public void editGenre(java.sql.Connection conn, String currName, String newName, String description) throws SQLException {
        int genreId = getGenreId(currName);
        PreparedStatement sql = conn.prepareStatement("{call editGenre(?, ?, ?)}");
        sql.setInt(1, genreId);
        sql.setString(2, newName);
        sql.setString(3, description);
        sql.execute();
    }
    
    // ******************************* ProdCompany data management *******************************
    private int getProdCompanyId(String name){
        for (ProdCompany pComp : prodCompanies) {
            if (pComp.getName().equals(name)) {
                return pComp.getId();
            }
        }
        return -1;
    }
    
    public boolean prodCompanyAlreadyExists(String name) {
        for (ProdCompany pComp : prodCompanies) {
            if (pComp.getName().toLowerCase().equals(name.toLowerCase())) {return true;}
        }
        return false;
    }
    
    public DefaultComboBoxModel makeProdCompanyList() {
        ArrayList<String> pCompanyNames = new ArrayList<>();
        pCompanyNames.add("Select company");
        for (ProdCompany pComp : prodCompanies) {
            pCompanyNames.add(pComp.getName());
        }
        DefaultComboBoxModel<String> pCompaniesList = new DefaultComboBoxModel<>(pCompanyNames.toArray(String[]::new));
        return pCompaniesList;
    }
    
    public void updateProdCompany(java.sql.Connection conn) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        prodCompanies.clear();
        CallableStatement sql = conn.prepareCall("{call getProdCompanyData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            ProdCompany pComp = new ProdCompany();
            pComp.setId(rs.getInt("id"));
            pComp.setName(rs.getString("name"));
            prodCompanies.add(pComp);
        }
    }
    
    public void insertProdCompany(java.sql.Connection conn, String name) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        PreparedStatement sql = conn.prepareStatement("{call insertProdCompany(?)}");
        sql.setString(1, name);
        sql.execute();
    }

    public void editProdCompany(java.sql.Connection conn, String currName, String newName) throws SQLException {
        int prodCompanyId = getProdCompanyId(currName);
        PreparedStatement sql = conn.prepareStatement("{call editProdCompany(?, ?)}");
        sql.setInt(1, prodCompanyId);
        sql.setString(2, newName);
        sql.execute();
    }
    
    // ******************************* Platform data management *******************************
    private int getPlatformId(String name){
        for (Platform platform : platforms) {
            if (platform.getName().equals(name)) {
                return platform.getId();
            }
        }
        return -1;
    }
    
    public boolean platformAlreadyExists(String name) {
        for (Platform platform : platforms) {
            if (platform.getName().toLowerCase().equals(name.toLowerCase())) {return true;}
        }
        return false;
    }
    
    public DefaultComboBoxModel makePlatformsList() {
        ArrayList<String> platformNames = new ArrayList<>();
        platformNames.add("Select platform");
        for (Platform platform : platforms) {
            platformNames.add(platform.getName());
        }
        DefaultComboBoxModel<String> platformsList = new DefaultComboBoxModel<>(platformNames.toArray(String[]::new));
        return platformsList;
    }
    
    public void updatePlatforms(java.sql.Connection conn) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        platforms.clear();
        CallableStatement sql = conn.prepareCall("{call getPlatformsData(?)}");
        sql.registerOutParameter(1, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            Platform platform = new Platform();
            platform.setId(rs.getInt("id"));
            platform.setUrl(rs.getString("url"));
            platform.setName(rs.getString("name"));
            platforms.add(platform);
        }
    }
    
    public void insertPlatform(java.sql.Connection conn, String name, String url) throws SQLException {
        //java.sql.Connection conn = sysConexion.obtConexion();
        PreparedStatement sql = conn.prepareStatement("{call insertPlatform(?, ?)}");
        sql.setString(1, name);
        sql.setString(2, url);
        sql.execute();
    }

    public void editPlatform(java.sql.Connection conn, String currName, String newName, String url) throws SQLException {
        int platformId = getPlatformId(currName);
        PreparedStatement sql = conn.prepareStatement("{call editPlatform(?, ?, ?)}");
        sql.setInt(1, platformId);
        sql.setString(2, newName);
        sql.setString(3, url);
        sql.execute();
    }
}
