/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cookie;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class cookie extends HttpServlet {
    private int Counter;

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
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            boolean newVisitor = true;
            Cookie[] visitCookie = request.getCookies();
        
            if(visitCookie != null){
                for(int i=0; i<visitCookie.length; i++){
                    if((visitCookie[i].getName().equals("oldVisitor")) && (visitCookie[i].getValue().equals("1"))){
                        newVisitor = false;
                        break;
                    }
                }
            }
            if(newVisitor){
                Cookie returnVisitorCookie = new Cookie("oldVisitor", "1");
                Cookie visitorCounter = new Cookie("cnt", "1");
                returnVisitorCookie.setMaxAge(3600);
                response.addCookie(returnVisitorCookie);
                visitorCounter.setMaxAge(3600);
                response.addCookie(visitorCounter);
                out.println("This is the first time you have visited this page.");
            }
            else{
                out.println("Welcome Back To This Page.");
                Cookie[] c = request.getCookies();
                if(c != null){
                    Cookie tc = null;
                    for(int i=0; i<c.length; i++){
                        if(c[i].getName().equals("cnt")){
                            tc = c[i];
                            Counter = Integer.parseInt(c[i].getValue());
                            break;
                        }
                    }
                    Counter++;
                    tc.setValue(Integer.toString(Counter));
                    tc.setMaxAge(3600);
                    response.addCookie(tc);
                    out.println("<br><b>You have visited this page "+Counter+" time(s)</b>");
                }
            }
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cookie</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cookie at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
