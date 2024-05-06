/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.SQLException;

/**
 *
 * @author wess
 */
public class Episode extends Production{
    private int seasonNumber;
    private int number;
    
    public Episode(int id, java.sql.Connection conn) throws SQLException {
        super(id, conn);
    }
    
    public int getSeasonNumber() {        
        return seasonNumber;
    }

    public int getNumber() {
        return number;
    }

    public void setSeasonNumber(int seasonNumber) {
        this.seasonNumber = seasonNumber;
    }

    public void setNumber(int number) {
        this.number = number;
    }
}
