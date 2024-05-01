/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.ArrayList;

/**
 *
 * @author esteb
 */
public class User extends Person{
    // Atributos
    protected int id;
    protected String userName;
    protected String password;
    protected String email;
    protected String legalId;
    protected int idType;
    protected int isAdmin;
    protected ArrayList<Production> wishList;
    protected ArrayList<Production> shoppingCartList;
    protected ArrayList<Production> purchaseHistory;
    protected ArrayList<PaymentMethod> paymentMethods;
    
    // Métodos
    public User() {
        this.id = 0;
        this.userName = "";
        this.password = "";
        this.email = "";
        this.legalId = "";
        this.idType = 0;
        this.isAdmin = 0;
        this.wishList = new  ArrayList<>();
        this.shoppingCartList = new ArrayList<>();
        this.purchaseHistory = new ArrayList<>();
        this.paymentMethods = new  ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getLegalId() {
        return legalId;
    }

    public int getIdType() {
        return idType;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public ArrayList<Production> getWishList() {
        return wishList;
    }

    public ArrayList<Production> getShoppingCartList() {
        return shoppingCartList;
    }

    public ArrayList<Production> getPurchaseHistory() {
        return purchaseHistory;
    }

    public ArrayList<PaymentMethod> getPaymentMethods() {
        return paymentMethods;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setLegalId(String legalId) {
        this.legalId = legalId;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public void setWishList(ArrayList<Production> wishList) {
        this.wishList = wishList;
    }

    public void setShoppingCartList(ArrayList<Production> shoppingCartList) {
        this.shoppingCartList = shoppingCartList;
    }

    public void setPurchaseHistory(ArrayList<Production> purchaseHistory) {
        this.purchaseHistory = purchaseHistory;
    }

    public void setPaymentMethods(ArrayList<PaymentMethod> paymentMethods) {
        this.paymentMethods = paymentMethods;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", userName=" + userName + ", password=" + password + ", email=" + email + ", legalId=" + legalId + ", idType=" + idType + ", isAdmin=" + isAdmin + '}';
    }
}
