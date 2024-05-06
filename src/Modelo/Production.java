/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.Date;
import java.sql.SQLException;
import java.sql.*;

/**
 *
 * @author wess
 */
public class Production {
   protected int id;
   protected Date airdate;
   protected String title;
   protected int runtime;
   protected String synopsis;
   protected String trailer;
   protected long currentPrice;
   protected int amountOfReviews;
   protected long currentRaiting;
   
   //protected ArrayList<Integer> genreIds;
   protected ArrayList<String> productionCompanies;
   protected ArrayList<BufferedImage> images;
   protected ArrayList<PriceLogEntry> priceLog;
   protected ArrayList<Review> reviewList;
   protected ArrayList<FilmPerson> directors;
   protected ArrayList<String> countriesProducedIn;
   protected ArrayList<Person> ProductionCrew;
   protected ArrayList<Platform>Platforms;

    public Production(int id, Date airdate, String title, int runtime, String synopsis, String trailer, int currentPrice)
    {
        this.id = id;
        this.airdate = airdate;
        this.title = title;
        this.runtime = runtime;
        this.synopsis = synopsis;
        this.trailer = trailer;
        this.currentPrice = currentPrice;
        this.productionCompanies = new ArrayList<>();
        this.images = new ArrayList<>();
        this.priceLog = new ArrayList<>();
        this.reviewList = new ArrayList<>();
        this.directors = new ArrayList<>();
        this.countriesProducedIn = new ArrayList<>();
        this.ProductionCrew = new ArrayList<>();
        this.Platforms = new ArrayList<>();
    }

    public void setProductionReviews(java.sql.Connection conn) throws SQLException{
        this.reviewList = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call getProductionReviews(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            //Aqui van llegando los reviews- review.raiting, review.title, userr.username
            String username = rs.getString("username");
            String Title = rs.getString("title");
            int raiting = rs.getInt("raiting");
            Review review = new Review(raiting, Title, username);
            reviewList.add(review);
        }
        this.amountOfReviews = reviewList.size();
        int promedio = 0;
        for(int i = 0; i<amountOfReviews; i++){
            Review review = reviewList.get(i);
            promedio += review.getRaiting();
        }
        promedio = promedio/amountOfReviews;
        this.currentRaiting = promedio;
    }
    /**
     *
     * @param conn
     * @throws java.sql.SQLException
     */
    public void getSales(java.sql.Connection conn) throws SQLException{
        this.priceLog = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call pricingFromProduction(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            Date date = rs.getDate("log_date");
            Long price = rs.getLong("price");
            PriceLogEntry precio = new PriceLogEntry(date, price);
            
            // ************************* LOS COMENTARIOS SON UN ERROR *****************************
            //priceLog.addLast(precio);
        }
        //Obtener el precio actual.
        //PriceLogEntry precio = priceLog.getFirst();
        //this.currentPrice = precio.getPrice();
    }
    
    private void getCountries(java.sql.Connection conn)throws SQLException{
        this.countriesProducedIn = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call getProductionCountries(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            countriesProducedIn.add(rs.getString("name"));
        }
    }
    
    private void getProductionCompanies(java.sql.Connection conn) throws SQLException{
        this.productionCompanies = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call getProductionCompanyNames(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            productionCompanies.add(rs.getString("name"));
        }
    }
    
    private void getImages(java.sql.Connection conn) throws SQLException{
        this.images = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call imagesForProduction(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            this.images.add((BufferedImage) rs.getBlob("image"));
        }
    }
    
    public int getAmountOfReviews(){
        return this.amountOfReviews;
    }
    
    private void getPlatforms(java.sql.Connection conn) throws SQLException{
        this.Platforms = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call getPlatforms(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            String url = rs.getString("url");
            String name = rs.getString("name");
            Platform platform = new Platform(name, url);
            this.Platforms.add(platform);
        }
    }
    
    private void getFilmP(java.sql.Connection conn) throws SQLException{
        this.ProductionCrew = new ArrayList<>();
        CallableStatement sql = conn.prepareCall("{call getProductionFP(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            Person person = new Person();
            person.setId(rs.getInt("id"));
            person.setFirstName(rs.getString("name"));
            ProductionCrew.add(person);
        }
    }
    
    
    public Production(int id, java.sql.Connection conn) throws SQLException
    {
        CallableStatement sql = conn.prepareCall("{call getUsersData(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            //SELECT id, airdate, title, run_time, synopsis, trailer
            this.id = id;
            this.airdate = rs.getDate("airdate");
            this.title = rs.getString("title");
            this.runtime = rs.getInt("run_time");
            this.trailer = rs.getString("trailer");
            this.synopsis = rs.getString("synopsis");
        }
        this.priceLog = new ArrayList<>();
        this.productionCompanies = new ArrayList<>();
        this.ProductionCrew = new ArrayList<>();
        this.Platforms = new ArrayList<>();
        this.countriesProducedIn = new ArrayList<>();
        this.reviewList = new ArrayList<>();
        getProductionCompanies(conn);
        getCountries(conn);
        getImages(conn);
        getFilmP(conn);
        getPlatforms(conn);
        getSales(conn);
        setProductionReviews(conn);
        
        //Plataformas, imagenes, pricelog y precio actual, paises producidos en y finalmente los filmperson.
    }
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @return the airdate
     */
    public Date getAirdate() {
        return airdate;
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
     * @return the synopsis
     */
    public String getSynopsis() {
        return synopsis;
    }

    /**
     * @return the trailer
     */
    public String getTrailer() {
        return trailer;
    }

    /**
     * @return the currentPrice
     */
    public long getCurrentPrice() {
        return currentPrice;
    }

    /**
     * @return the productionCompanies
     */
    public ArrayList<String> getProductionCompanies() {
        return productionCompanies;
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
    public ArrayList<PriceLogEntry> getPriceLog() {
        return priceLog;
    }

    /**
     * @return the reviewList
     */
    public ArrayList<Review> getReviewList() {
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
     * @return the ProductionCrew
     */
    public ArrayList<Person> getProductionCrew() {
        return ProductionCrew;
    }

    /**
     * @return the Platforms
     */
    public ArrayList<Platform> getPlatforms() {
        return Platforms;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @param airdate the airdate to set
     */
    public void setAirdate(Date airdate) {
        this.airdate = airdate;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @param runtime the runtime to set
     */
    public void setRuntime(int runtime) {
        this.runtime = runtime;
    }

    /**
     * @param synopsis the synopsis to set
     */
    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    /**
     * @param trailer the trailer to set
     */
    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    /**
     * @param currentPrice the currentPrice to set
     */
    public void setCurrentPrice(int currentPrice) {
        this.currentPrice = currentPrice;
    }

    /**
     * @param productionCompanies the productionCompanies to set
     */
    public void setProductionCompanies(ArrayList<String> productionCompanies) {
        this.productionCompanies = productionCompanies;
    }

    /**
     * @param images the images to set
     */
    public void setImages(ArrayList<BufferedImage> images) {
        this.images = images;
    }

    /**
     * @param priceLog the priceLog to set
     */
    public void setPriceLog(ArrayList<PriceLogEntry> priceLog) {
        this.priceLog = priceLog;
    }

    /**
     * @param reviewList the reviewList to set
     */
    public void setReviewList(ArrayList<Review> reviewList) {
        this.reviewList = reviewList;
    }

    /**
     * @param directors the directors to set
     */
    public void setDirectors(ArrayList<FilmPerson> directors) {
        this.directors = directors;
    }

    /**
     * @param countriesProducedIn the countriesProducedIn to set
     */
    public void setCountriesProducedIn(ArrayList<String> countriesProducedIn) {
        this.countriesProducedIn = countriesProducedIn;
    }

    /**
     * @param Platforms the Platforms to set
     */
    public void setPlatforms(ArrayList<Platform> Platforms) {
        this.Platforms = Platforms;
        //Aqui va getPlatforms... Y todo eso... AAggggh...
    }
    
}