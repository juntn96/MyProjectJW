
package controller;

import dal.DatabaseContext;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jic
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        DatabaseContext db = new DatabaseContext();
        Connection connection =  db.connection;
         try{
        /*
        Database connection, database id is root and password is blank
        */
        Statement st1=connection.createStatement();
        /*
        select the image from the picture table    .
        */
         String sql = "SELECT [clothingID]"
                    + "      ,[clothingName]"
                    + "      ,[styleID]"
                    + "      ,[sizeID]"
                    + "      ,[colorID]"
                    + "      ,[materialID]"
                    + "      ,[image]"
                    + "  FROM [dbo].[clothingTBL]";
        ResultSet rs1 = st1.executeQuery(sql);
        String imgLen="";
        if(rs1.next()){
            imgLen = rs1.getString("image");
        }
        rs1 = st1.executeQuery(sql);

        if(rs1.next()){
            int len = imgLen.length();
            byte [] rb = new byte[len];

            /* retrieving image in binery format*/

            InputStream readImg = rs1.getBinaryStream("image");
            int index=readImg.read(rb, 0, len);

            System.out.println("index"+index);
            st1.close();

            response.reset();
            response.setContentType("image/jpg");
            response.getOutputStream().write(rb,0,len);
            response.getOutputStream().flush();
        }
    }
    catch (Exception e){
      e.printStackTrace();
    }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
