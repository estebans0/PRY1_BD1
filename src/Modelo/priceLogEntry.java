/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
import java.time.LocalDate;
/**
 *
 * @author wess
 */

public class priceLogEntry {
    private LocalDate date;
    private long price;
    
    public priceLogEntry(int id)
    {

    }
    
    public LocalDate getDate() {
        return date;
    }

    public long getPrice() {
        return price;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public void setPrice(long price) {
        this.price = price;
    }
}