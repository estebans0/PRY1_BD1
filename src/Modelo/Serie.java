/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.ArrayList;
import com.sun.jdi.connect.spi.Connection;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;
import java.sql.*;
/**
 *
 * @author wess
 */
public class Serie extends Production{
    private ArrayList<Episode> episodios;
    
    private void getEpisodes(java.sql.Connection conn) throws SQLException{
        CallableStatement sql = conn.prepareCall("{call getUsersData(?,?)}");
        sql.setInt(1, id);
        sql.registerOutParameter(2, Types.REF_CURSOR);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        while (rs.next()) {
            int episode_id = rs.getInt("id_episode");
            Episode episode = new Episode(episode_id, conn);
            //SELECT episode.id_episode id_episode, episode.episode_number episode_number, episode.season season
            episode.setNumber(rs.getInt("episode_number"));
            episode.setSeasonNumber(rs.getInt("season"));
            episodios.add(episode);
        }
    }
    
    public Serie(int id, java.sql.Connection conn) throws SQLException {
        super(id, conn);
        episodios = new ArrayList<>();
        getEpisodes(conn);
    }
    
}
