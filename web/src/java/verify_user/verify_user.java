package verify_user;


import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import javax.servlet.http.Cookie;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class verify_user extends HttpServlet {

    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Connection con;
        ResultSet rs;
        PrintWriter out = response.getWriter();
        try  {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","");
            String s = "select * from register_user where email_id=? and password=?";
            String s1 = request.getParameter("uname");
            String s2;
            s2 = request.getParameter("psw");
            
            PreparedStatement ps = con.prepareStatement(s);
             ps.setString(1, s1);
             ps.setString(2, s2);
             rs=ps.executeQuery();
             boolean found= rs.next();
             if (found)
             {
                 String s3 = rs.getString("name");
                 HttpSession session =request.getSession();
                 session.setAttribute("uname",s1);
                 session.setAttribute("name",s3);
                 out.println("Welcome "+rs.getString(1));
                 out.println("\n");
                 con.close();
                 response.sendRedirect("user_home.jsp");
                     
             }
             
            con.close();
            out.println("wrong login_id or password");

            
            /* TODO output your page here. You may use following sample code. */
           
        } catch (ClassNotFoundException | SQLException ex) {
            out.println(ex);
            Logger.getLogger(verify_user.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
