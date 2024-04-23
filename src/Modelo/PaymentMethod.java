 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author esteb
 */
public class PaymentMethod {
    // Atributos
    private int id;
    private int ccNumber;
    private String ccOwnerName;
    private String ccNickname;
    private Date expirationDate;
    //private SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
    
    // Métodos
    public PaymentMethod(int id){
        this.id = id;
        this.ccNumber = 0;
        this.ccOwnerName = "";
        this.ccNickname = "";
        this.expirationDate = new Date();
    }

    public int getId() {
        return id;
    }

    public int getCcNumber() {
        return ccNumber;
    }

    public String getCcOwnerName() {
        return ccOwnerName;
    }

    public String getCcNickname() {
        return ccNickname;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCcNumber(int ccNumber) {
        this.ccNumber = ccNumber;
    }

    public void setCcOwnerName(String ccOwnerName) {
        this.ccOwnerName = ccOwnerName;
    }

    public void setCcNickname(String ccNickname) {
        this.ccNickname = ccNickname;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }
}
