/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.ArrayList;

/**
 *
 * @author wess
 */
public class Genre {
    private int id;
    private String name;
    private String Characteristics;
    
    private ArrayList<Production> production;
    
    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @return the Characteristics
     */
    public String getCharacteristics() {
        return Characteristics;
    }

    /**
     * @return the production
     */
    public ArrayList<Production> getProduction() {
        return production;
    }

    public void addProduction(){
        
    }
}
