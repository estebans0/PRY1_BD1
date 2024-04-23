/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.awt.image.BufferedImage;
import java.util.ArrayList;

/**
 *
 * @author wess
 */
public class Production {
   protected int id;
   protected String title;
   protected int runtime;
   protected int currentPrice;
   protected ArrayList<Integer> genreIds;
   protected String productionCompanyName;
   protected ArrayList<BufferedImage> images;
   protected ArrayList<priceLogEntry> priceLog;
   protected ArrayList<review> reviewList;
   protected ArrayList<FilmPerson> directors;
   protected ArrayList<String> countriesProducedIn;
   protected ArrayList<Rol> ProductionRols;
   
   public Production(int id)
   {
   
   }
   
   
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @return the runtime
     */
    public int getRuntime() {
        return runtime;
    }

    /**
     * @return the currentPrice
     */
    public int getCurrentPrice() {
        return currentPrice;
    }

    /**
     * @return the genreIds
     */
    public ArrayList<Integer> getGenreIds() {
        return genreIds;
    }

    /**
     * @return the productionCompanyName
     */
    public String getProductionCompanyName() {
        return productionCompanyName;
    }

    /**
     * @return the images
     */
    public ArrayList<BufferedImage> getImages() {
        return images;
    }

    /**
     * @return the priceLog
     */
    public ArrayList<priceLogEntry> getPriceLog() {
        return priceLog;
    }

    /**
     * @return the reviewList
     */
    public ArrayList<review> getReviewList() {
        return reviewList;
    }

    /**
     * @return the directors
     */
    public ArrayList<FilmPerson> getDirectors() {
        return directors;
    }

    /**
     * @return the countriesProducedIn
     */
    public ArrayList<String> getCountriesProducedIn() {
        return countriesProducedIn;
    }

    /**
     * @return the ProductionRols
     */
    public ArrayList<Rol> getProductionRols() {
        return ProductionRols;
    }
}
