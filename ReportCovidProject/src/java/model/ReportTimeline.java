/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author BanditK
 */
//59050245 Banthit Khongchati
public class ReportTimeline {

    public String Date;
    public int NewConfirmed;
    public int NewRecovered;
    public int NewHospitalized;
    public int NewDeaths;
    public int Confirmed;
    public int Recovered;
    public int Hospitalized;
    public int Deaths;

    public String getDate() {
        return Date;
    }

    public int getNewConfirmed() {
        return NewConfirmed;
    }

    public int getNewRecovered() {
        return NewRecovered;
    }

    public int getNewHospitalized() {
        return NewHospitalized;
    }

    public int getNewDeaths() {
        return NewDeaths;
    }

    public int getConfirmed() {
        return Confirmed;
    }

    public int getRecovered() {
        return Recovered;
    }

    public int getHospitalized() {
        return Hospitalized;
    }

    public int getDeaths() {
        return Deaths;
    }

}
