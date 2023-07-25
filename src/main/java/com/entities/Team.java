package com.entities;

public class Team {

    private String teamId;
    private String teamName;
    private String teamPic;
    
    public Team() {
    }

    public Team(String teamId, String teamName, String teamPic) {
        this.teamId = teamId;
        this.teamName = teamName;
        this.teamPic = teamPic;
    }

    public Team(String teamName, String teamPic) {
        this.teamName = teamName;
        this.teamPic = teamPic;
    }

    public String getTeamId() {
        return teamId;
    }

    public void setTeamId(String teamId) {
        this.teamId = teamId;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getTeamPic() {
        return teamPic;
    }

    public void setTeamPic(String teamPic) {
        this.teamPic = teamPic;
    }
    
    
    
}
