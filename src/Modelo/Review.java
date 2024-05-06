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
public class Review {
    protected int raiting;
    protected String title;
    protected String author; 
    
    public Review(int raiting, String title, String author) {
        this.raiting = raiting;
        this.title = title;
        this.author = author;
    }

    /**
     * @return the raiting
     */
    public int getRaiting() {
        return raiting;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param raiting the raiting to set
     */
    public void setRaiting(int raiting) {
        this.raiting = raiting;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    
}
