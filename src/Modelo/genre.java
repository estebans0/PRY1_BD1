/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author wess
 */
public class genre {
    // Atributos
    private int id;
    private String name;
    private String description;
    private int price;
    
    // Constructor
    public genre() {
        this.id = 0;
        this.name = null;
        this.description = null;
        this.price = 0;
    }
    
    public genre(int id) {
        this.id = 0;
        this.name = null;
        this.description = null;
        this.price = 0;
    }

    // Setters y Getters
    public int getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }
    
    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
