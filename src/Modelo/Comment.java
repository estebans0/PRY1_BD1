/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author wess
 */
public class Comment {
    private int userid;
    private String text;
    
    public Comment(int id)
    {
        
    }
    
    public int getUserid() {
        return userid;
    }

    public String getText() {
        return text;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setText(String text) {
        this.text = text;
    }
}
