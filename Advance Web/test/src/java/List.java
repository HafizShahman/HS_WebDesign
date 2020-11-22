/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hafiz
 */
public class List extends HttpServlet {

public void doGet(HttpServletRequest request, HttpServletResponse response) throws
ServletException, IOException{
response.setContentType(“text/html”);
PrintWriter pw = response.getWriter();
String connectionURL = “jdbc:mysql://localhost/zulfiqar”;
Connection connection=null;
try{
Class.forName(“org.gjt.mm.mysql.Driver”);
connection = DriverManager.getConnection(connectionURL, “root”, “admin”);
PreparedStatement pst = connection.prepareStatement(“Select * from emp_sal”);
ResultSet rs = pst.executeQuery();
while(rs.next()){
pw.println(rs.getString(1) +” ” + rs.getString(2)+”<br>”);
}
}
catch (Exception e){
pw.println(e);
}
pw.println(“hello”);
}

}
