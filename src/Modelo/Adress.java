/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author wess
 */
public class Adress {
    private String country;
    private String province;
    private String city;
    private String exactAdress;
    private String FullAdress;
    
    public Adress(int id)
    {
    }
    
    public String getCountry() {
        return country;
    }

    public String getProvince() {
        return province;
    }

    public String getCity() {
        return city;
    }

    public String getExactAdress() {
        return exactAdress;
    }

    public String getFullAdress() {
        return FullAdress;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setExactAdress(String exactAdress) {
        this.exactAdress = exactAdress;
    }

    public void setFullAdress(String FullAdress) {
        this.FullAdress = FullAdress;
    }    
}
