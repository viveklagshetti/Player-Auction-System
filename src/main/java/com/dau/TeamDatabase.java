package com.dau;

import com.entities.Team;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeamDatabase {

    private Connection con;

    public TeamDatabase(Connection con) {
        this.con = con;
    }

    public boolean SaveTeam(Team team) {
        boolean f = false;
        try {
            String query = "insert into team(teamName,teamPic) values(?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, team.getTeamName());
            pst.setString(2, team.getTeamPic());
            pst.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public ArrayList<Team> displayTeam() {
        ArrayList<Team> teams = new ArrayList();
        try {
            String query = "select * from team";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Team team = new Team();
                team.setTeamId(rs.getString("teamId"));
                team.setTeamName(rs.getString("teamName"));
                teams.add(team);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teams;

    }
}
