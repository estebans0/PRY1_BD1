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
public class FilmPerson extends Person{
    private ArrayList<Production> workedIn;
    private Adress adress;
    private String trivia;
    private int heigth;
    private String nationality;
    private String biography;

    public FilmPerson(int id) {}

    public ArrayList<Production> getWorkedIn() {
        return workedIn;
    }

    public Adress getAdress() {
        return adress;
    }

    public String getTrivia() {
        return trivia;
    }

    public int getHeigth() {
        return heigth;
    }

    public String getNationality() {
        return nationality;
    }

    public String getBiography() {
        return biography;
    }

    public void setWorkedIn(ArrayList<Production> workedIn) {
        this.workedIn = workedIn;
    }

    public void setAdress(Adress adress) {
        this.adress = adress;
    }

    public void setTrivia(String trivia) {
        this.trivia = trivia;
    }

    public void setHeigth(int heigth) {
        this.heigth = heigth;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }
}
