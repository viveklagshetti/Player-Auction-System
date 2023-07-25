package com.dau;

import com.entities.Player;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class PlayerDatabase {

    int pgno;
    private Connection con;

    public PlayerDatabase(Connection con) {
        this.con = con;
    }

    public boolean savePlayer(Player player) {
        boolean f = false;
        try {
            String query = "insert into player(firstname,lastname,category,playerPic,status) values(?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, player.getFirstname());
            pst.setString(2, player.getLastname());
            pst.setString(3, player.getCatgory());
            pst.setString(4, player.getPlayePic());
            pst.setString(5, player.getStatus());
            pst.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<Player> displayAllPlayer() throws SQLException {
        List<Player> player = new ArrayList<>();
        try {
            String query = "select * from player";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Player p = new Player();
                p.setPlayerId(rs.getString("playerId"));
                p.setFirstname(rs.getString("firstname"));
                p.setLastname(rs.getString("lastname"));
                p.setCatgory(rs.getString("category"));
                p.setStatus(rs.getString("status"));
                player.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return player;
    }

    // Modify displayAuctionPlayer method to accept start and limit parameters
    public void myMethod(HttpServletRequest request) {
        pgno = request.getAttribute("pgno") == null ? 0 : (int) request.getAttribute("pgno");
        // use pgno value in your Java code

    }

    public List<Player> displayAuctionPlayer() throws SQLException {
        int end = 1;
        int start = pgno * end;

        List<Player> player = new ArrayList<>();
        try {
            String query = "SELECT * FROM player WHERE status='Unsold' LIMIT ?, ?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1, start);
            pst.setInt(2, end);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Player p = new Player();
                p.setPlayerId(rs.getString("playerId"));
                p.setFirstname(rs.getString("firstname"));
                p.setLastname(rs.getString("lastname"));
                p.setCatgory(rs.getString("category"));
                p.setStatus(rs.getString("status"));
                p.setSubCategory(rs.getString("subCategory"));
                p.setPlayePic(rs.getString("playerPic"));

                player.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return player;
    }

    public int getPlayerCount() throws SQLException {
        int total = 0;
        try {
            String query = "SELECT COUNT(*) FROM player";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public boolean saveAuction(Player player) {
        boolean f = false;
        try {
            String query = "UPDATE player SET fteamId=?, rate=?, status='Sold' WHERE playerId=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, player.getFteamId());
            pst.setString(2, player.getRate());
            pst.setString(3, player.getPlayerId());
            pst.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public List<Player> soldPlayer(Player player) {
        ArrayList<Player> players = new ArrayList();
        try {
            String query = "select * from player where fteamId=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, player.getFteamId());
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Player pr = new Player();
                pr.setFirstname(rs.getString("firstname"));
                pr.setLastname(rs.getString("lastname"));
                pr.setRate(rs.getString("rate"));
                pr.setCatgory(rs.getString("category"));
             
                players.add(pr);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return players;
    }

}
