package com.dau;

import com.entities.Admin;
import java.sql.*;

public class AdminDatabase {

    private Connection con;

    public AdminDatabase(Connection con) {
        this.con = con;
    }

    public boolean login(Admin admin) {
        try {

            String query = "select * from admin where useremail=? and password=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, admin.getUseremail());
            pt.setString(2, admin.getPassword());

            ResultSet rs = pt.executeQuery();
            return rs.next();
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

//
//    public boolean checkLogin(String user, String pass) {
//
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket", "", "");
//            String query = "select * from admin where useremail=? and password=?";
//            PreparedStatement pst = con.prepareStatement(query);
//            pst.setString(1, user);
//            pst.setString(2, pass);
//
//            ResultSet rs = pst.executeQuery();
//            return rs.next();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return false;
//    }

}
