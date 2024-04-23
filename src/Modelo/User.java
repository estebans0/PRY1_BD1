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
    protected boolean is_admin;
    protected ArrayList<Production> wishList;
    protected ArrayList<Production> shoppingCartList;
    protected ArrayList<Production> purchaseHistory;
    protected ArrayList<PaymentMethod> paymentMethods;
    
    // Métodos
    public User(int id) {
        super(id);
        this.id = id;
        this.userName = "";
        this.password = "";
        this.email = "";
        this.is_admin = false;
        this.wishList = new  ArrayList<>();
        this.shoppingCartList = new ArrayList<>();
        this.purchaseHistory = new ArrayList<>();
        this.paymentMethods = new  ArrayList<>();
    }
    
    
    public User(int id, String username, String password, String email, String gender) {
        super();
        super.genderName = gender;
        this.id = id;
        this.userName = username;
        this.password = password;
        this.email = email;
        this.is_admin = false;
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

    public boolean getIs_admin() {
        return is_admin;
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

    public void setIs_admin(boolean is_admin) {
        this.is_admin = is_admin;
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
}
