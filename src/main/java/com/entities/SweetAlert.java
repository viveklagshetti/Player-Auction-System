package com.entities;

public class SweetAlert {
    
    //Declaring variables 
    private String content;
    private String type;
    private String cssClass;
    
    //Intialise the contents
    public SweetAlert(String content, String type, String cssClass) {
        this.content = content;
        this.type = type;
        this.cssClass = cssClass;
    }

    //Creating getters and setters to access the data and insert the data
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }
    
    
    
}
