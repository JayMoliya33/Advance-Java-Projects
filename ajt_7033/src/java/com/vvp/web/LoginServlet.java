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
public class LoginServlet extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
         String username[] = new String[2];
         String password[] = new String[2];
         username[0]="admin";
         password[0]="admin";
         username[1]="jay";
         password[1]="123";
         
        try {
            
            String name = request.getParameter("name");
             String pwd = request.getParameter("pwd");
             int flag=0;
             for(int i=0;i<3;i++)
             {
                 if(username[i].equals(name) && password[i].equals(pwd) )
                 {
                    flag=1;
                     break;
                 }
                 else
                 {
                     flag=0;
                 }
             }
             if(flag==1)
             {
                 out.println("<h1>Login Sucessfully!</h1>");
             }
             else
             {
                 out.println("<h1>Invalid Username or Password</h1>");
             }


        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
