/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
import java.time.LocalDate;
import java.util.Date;
/**
 *
 * @author wess
 */

public class PriceLogEntry {
    private Date date;
    private long price;
    
    public PriceLogEntry(Date date, long price) {
        this.date = date;
        this.price = price;
    }
    
    public PriceLogEntry(int id)
    {

    }
    
    public Date getDate() {
        return date;
    }

    public long getPrice() {
        return price;
    }
}