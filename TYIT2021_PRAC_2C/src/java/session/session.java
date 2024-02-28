/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class session extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession mySession = request.getSession(true);
        String heading;
        Integer counter = new Integer(0);
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            if (mySession.isNew()){
                heading = "This is the first time you are visiting this page.";
            }
            else{
                heading = "Welcome back to this page.";
                Integer oldCounter = (Integer)mySession.getAttribute("counter");
                if(oldCounter != null){
                    counter = new Integer(oldCounter.intValue() + 1);
                }
            }
            mySession.setAttribute("counter", counter);
            out.println("<h3>" + heading + "</h3><br>");
            out.println("<b>SESSION ID:</b>" + mySession.getId()+ "<br>");
            out.println("<b>Creation Time of the Session: </b>" + new Date(mySession.getCreationTime()) + "<br>");
            out.println("<b>Time of Last Access: </b>" + new Date(mySession.getLastAccessedTime()) + "<br><br>");
            out.println("You have visited this page " + (++counter));
            out.println((counter == 1) ? " time " : " times ");
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet session</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet session at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
