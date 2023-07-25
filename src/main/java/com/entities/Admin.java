package com.entities;

public class Admin {
    private int id;
    private String useremail;
    private String password;

    public Admin() {
    }

    public Admin(int id, String useremail, String password) {
        this.id = id;
        this.useremail = useremail;
        this.password = password;
    }

    public Admin(String useremail, String password) {
        this.useremail = useremail;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
