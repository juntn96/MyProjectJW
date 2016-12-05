/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author q
 */
public class Cloth {

    private int clothID;
    private String name;
    private boolean gender;
    private String path;
    private int sizeID;
    private int styleID;
    private int colorID;
    private int meterialID;

    public Cloth(int clothID, String name, boolean geder, String path, 
            int sizeID, int styleID, int colorID, int meterialID) {
        this.clothID = clothID;
        this.name = name;
        this.gender = geder;
        this.path = path;
        this.sizeID = sizeID;
        this.styleID = styleID;
        this.colorID = colorID;
        this.meterialID = meterialID;
    }

    public Cloth() {
    }

    public int getClothID() {
        return clothID;
    }

    public void setClothID(int clothID) {
        this.clothID = clothID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGeder() {
        return gender;
    }

    public void setGeder(boolean geder) {
        this.gender = geder;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getSizeID() {
        return sizeID;
    }

    public void setSizeID(int sizeID) {
        this.sizeID = sizeID;
    }

    public int getStyleID() {
        return styleID;
    }

    public void setStyleID(int styleID) {
        this.styleID = styleID;
    }

    public int getColorID() {
        return colorID;
    }

    public void setColorID(int colorID) {
        this.colorID = colorID;
    }

    public int getMeterialID() {
        return meterialID;
    }

    public void setMeterialID(int meterialID) {
        this.meterialID = meterialID;
    }

    @Override
    public String toString() {
        return name +" "+sizeID+" "+styleID+" "+colorID+" "+meterialID+" "+gender;
    }

    
}
