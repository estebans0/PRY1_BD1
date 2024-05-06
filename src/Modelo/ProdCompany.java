/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Esteban
 */
public class ProdCompany {
    // Atributos
    private int id;
    private String name;
    
    // Constructor
    public ProdCompany() {
        this.id = 0;
        this.name = null;
    }
    
    // Setters y getters
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
