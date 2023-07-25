package com.dau;

import java.sql.Connection;
import java.sql.DriverManager;


//Database Connection class
public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection()
    {
        try{
            if(con == null) //Checking the connection is null
            {
                //First Step : Load the jdbc Driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                //Second Step : Get the Connection by url
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket","root","");
               
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
        
    }
    
}
