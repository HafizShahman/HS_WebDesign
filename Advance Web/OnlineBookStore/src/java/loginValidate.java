/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author hafiz
 */
public class loginValidate  {

    public static boolean checkUser(String Email,String Password){
        boolean st =false;
        
        try{
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
            PreparedStatement ps = con.prepareStatement("select * from 'storeuser' where Email='?' and Password='?");
            ps.setString(1, Email);
            ps.setString(2, Password);
            ResultSet rs =ps.executeQuery();
            st = rs.next();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return st;
    }


}
