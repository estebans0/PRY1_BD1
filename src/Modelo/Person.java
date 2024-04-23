/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.awt.image.BufferedImage;
import java.util.ArrayList;

/**
 *
 * @author wess
 */
public class Person {
    protected String name;
    protected String genderName;
    protected BufferedImage image;
    protected ArrayList<FamilyMember> FamilyMembers;
    public Person(int id)
    {
    }
    public Person()
    {
    }
    
    public String getName() {
        return name;
    }

    public String getGenderName() {
        return genderName;
    }

    public BufferedImage getImage() {
        return image;
    }

    public ArrayList<FamilyMember> getFamilyMembers() {
        return FamilyMembers;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGenderName(String genderName) {
        this.genderName = genderName;
    }

    public void setImage(BufferedImage image) {
        this.image = image;
    }

    public void setFamilyMembers(ArrayList<FamilyMember> FamilyMembers) {
        this.FamilyMembers = FamilyMembers;
    }
}
