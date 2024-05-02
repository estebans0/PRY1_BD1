/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author wess
 */
public class Person {
    // Atributos
    protected int id;
    protected Date dob;
    protected String firstName;
    protected String lastName;
    protected String middleName;
    protected String nickname;
    protected BufferedImage image;
    protected int gender;
    protected int partnerId;
    protected ArrayList<FamilyMember> familyMembers;
    
    // Constructor
    public Person() {
        this.id = 0;
        this.dob = null;
        this.firstName = "";
        this.lastName = "";
        this.middleName = "";
        this.nickname = "";
        this.image = null;
        this.gender = 0;
        this.partnerId = 0;
        this.familyMembers = new ArrayList<>();
    }

    // Setters y Getters
    public int getId() {
        return id;
    }

    public Date getDob() {
        return dob;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public String getNickname() {
        return nickname;
    }

    public BufferedImage getImage() {
        return image;
    }

    public int getGender() {
        return gender;
    }

    public int getPartnerId() {
        return partnerId;
    }

    public ArrayList<FamilyMember> getFamilyMembers() {
        return familyMembers;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public void setNickname(String Nickname) {
        this.nickname = Nickname;
    }

    public void setImage(BufferedImage image) {
        this.image = image;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public void setPartnerId(int partnerId) {
        this.partnerId = partnerId;
    }

    public void setFamilyMembers(ArrayList<FamilyMember> FamilyMembers) {
        this.familyMembers = FamilyMembers;
    }

    @Override
    public String toString() {
        return "Person{" + "id=" + id + ", dob=" + dob + ", firstName=" + firstName + ", lastName=" + lastName + ", middleName=" + middleName + ", nickname=" + nickname + ", image=" + image + ", gender=" + gender + ", partnerId=" + partnerId + ", familyMembers=" + familyMembers + '}';
    }
}