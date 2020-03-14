/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vvp.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jay Moliya
 */
public class servlet1 extends HttpServlet {
      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();   

        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlet1</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servlet1 at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */            
        } finally { 
            out.close();
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
