package dal;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class RetreiveImage extends HttpServlet{
    
    
    
    public Connection connection;

    public RetreiveImage() {
        try {
            String username = "prj321";
            String password = "123456";
            String url = "jdbc:sqlserver://localhost;databaseName=Shop";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
  
   
  }
    public static void main(String[] args) {
        
    }
}