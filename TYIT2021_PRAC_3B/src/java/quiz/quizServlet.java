/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class quizServlet extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int correct = 0, incorrect = 0;
        String a1 = request.getParameter("q1");
        String a2 = request.getParameter("q2");
        String a3 = request.getParameter("q3");
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            if(a1.equals("4")){
                correct++;
            }
            else{
                incorrect++;
            }
            
            if(a2.equals("apple")){
                correct++;
            }
            else{
                incorrect++;
            }
            
            if(a3.equals("lion")){
                correct++;
            }
            else{
                incorrect++;
            }
            
            out.println("Correct: " + correct + " Incorrect: " + incorrect);
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet quizServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet quizServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
