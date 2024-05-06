/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Movie;
import Modelo.Production;
import Modelo.genre;
//import Modelo.Serie;

import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.*;

/**
 *
 * @author wess
 */
public class productionManager {
    //Primero una lista con todas las producciones, despues  metodos para getiar los 3 tipos y un esqueleto para los inserts.
    //Por ultimo, unos metodos para insertar que deberian de hacerse por Esteban.
    private ArrayList<Production> productions;
    private ArrayList<genre> genres;


    
private void GetMovies(java.sql.Connection conn) throws SQLException{
        CallableStatement sql = conn.prepareCall("{call getMovies(?)}");
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        
        while (rs.next()) {
            int id = rs.getInt("id_movie");
            Movie movie = new Movie(id,conn);
            productions.add(movie);
        }
    }

private void GetSeries(java.sql.Connection conn) throws SQLException{
        CallableStatement sql = conn.prepareCall("{call getSeries(?)}");
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        
        while (rs.next()) {
            int id = rs.getInt("id");
            //Serie serie = new Serie(id,conn);
            //productions.add(serie);
        }
    }


public void ActualizeProductions(java.sql.Connection conn) throws SQLException{
    productions = new ArrayList<>();
    genres = new ArrayList<>();
       
    GetMovies(conn);
    GetSeries(conn);
    }
    //Tres metodos para querries.
}