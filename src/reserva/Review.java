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
    private int userId;
    private String title;
    private String text;
    private ArrayList<Comment> comentList;
    private String author; 
          
    /**
     * @return the userId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @return the text
     */
    public String getText() {
        return text;
    }

    /**
     * @return the comentList
     */
    public ArrayList<Comment> getComentList() {
        return comentList;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @param text the text to set
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * @param comentList the comentList to set
     */
    public void setComentList(ArrayList<Comment> comentList) {
        this.comentList = comentList;
    }
}
