package com.entities;

import java.sql.*;

import java.sql.Connection;

public class Player {

    private String mobile;
    private String cmobile;
    private String tsize;
    private String psize;
    private String playerId;
    private String firstname;
    private String lastname;
    private String catgory;
    private String playePic;
    private String status;
    private String fteamId;
    private String rate;
    private String subCategory;
    private Connection con;

    public Player(Connection con) {
        this.con = con;
    }

    public Player() {
    }

    public Player(String playerId, String firstname, String lastname, String catgory, String playePic, String status, String fteamId, String rate) {
        this.playerId = playerId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.catgory = catgory;
        this.playePic = playePic;
        this.status = status;
        this.fteamId = fteamId;
        this.rate = rate;
    }

    public Player(String firstname, String lastname, String catgory, String playePic, String status) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.catgory = catgory;
        this.playePic = playePic;
        this.status = status;

    }

    public Player(String playerId, String fteamId, String rate) {
        this.playerId = playerId;
        this.fteamId = fteamId;
        this.rate = rate;
    }

    public Player(String fteamId) {
        this.fteamId = fteamId;
    }

    public Player(String fteamId, String rate) {
        this.fteamId = fteamId;
        this.rate = rate;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCmobile() {
        return cmobile;
    }

    public void setCmobile(String cmobile) {
        this.cmobile = cmobile;
    }

    public String getTsize() {
        return tsize;
    }

    public void setTsize(String tsize) {
        this.tsize = tsize;
    }

    public String getPsize() {
        return psize;
    }

    public void setPsize(String psize) {
        this.psize = psize;
    }

    
    public String getPlayerId() {
        return playerId;
    }

    public void setPlayerId(String playerId) {
        this.playerId = playerId;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getFteamId() {
        return fteamId;
    }

    public void setFteamId(String fteamId) {
        this.fteamId = fteamId;
    }

    public String getRate() {
        return rate;
    }

    public String getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getCatgory() {
        return catgory;
    }

    public void setCatgory(String catgory) {
        this.catgory = catgory;
    }

    public String getPlayePic() {
        return playePic;
    }

    public void setPlayePic(String playePic) {
        this.playePic = playePic;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
