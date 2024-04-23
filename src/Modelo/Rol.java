/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author wess
 */
public class Rol {
    private String characterName;
    private FilmPerson filmPerson;

    public Rol(int id)
    {
        
    }
    
    
    public String getCharacterName() {
        return characterName;
    }

    public FilmPerson getFilmPerson() {
        return filmPerson;
    }

    public void setCharacterName(String characterName) {
        this.characterName = characterName;
    }

    public void setFilmPerson(FilmPerson filmPerson) {
        this.filmPerson = filmPerson;
    }
}
