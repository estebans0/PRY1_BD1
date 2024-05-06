/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author wess
 */
public class Platform {
    // Atributos
    private int id;
    private String name;
    private String url;
    
    public Platform() {
        this.id = 0;
        this.name = null;
        this.url = null;
    }
    public Platform(String name, String url) {
        this.id = 0;
        this.name = name;
        this.url = url;
    }
    
    
    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
}
