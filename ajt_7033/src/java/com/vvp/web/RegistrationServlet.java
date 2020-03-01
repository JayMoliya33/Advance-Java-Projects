package com.vvp.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * * @author Jay Moliya
 */
public class RegistrationServlet extends HttpServlet
{
   static int nameValidate(String name)
    {
        if(name.length()>=6 && name.length()<=20)
        {
            return 1;
        }
        return 0;
    }

    static int phonenumberValidate(String number)
    {
        if(number.length()>=8 && number.length()<=11)
        {
            return 1;
        }
        return 0;
    }

    static int passwordValidate(String password)
    {
        int digit=0,upper=0,special=0;
        if(password.length()>=6 && password.length()<=20)
        {
            for(int i=0;i<=password.length();i++)
            {
                if(password.charAt(i)>='A' && password.charAt(i)<='Z')
                {
                    upper=1;
                }
                if(password.charAt(i)>='0' && password.charAt(i)<='9')
                {
                    digit=1;
                }
                if(!(password.charAt(i)>= 65 && password.charAt(i)<= 90) || (password.charAt(i)>= 97 && password.charAt(i)<= 122)||(password.charAt(i)>= 48 && password.charAt(i)<= 57))
                {
                    special=1;
                }
                if(upper==1 && digit==1 && special==1)
                {
                    break;
                }
            }
            return 1;
        }
        return 0;
    }

    static int emailValidate(String email)
    {
                String s=email;
		int l=s.length();
		char charno;
		int i;
		int firstpart_length=s.indexOf('@');
		if (!((s.charAt(0)>='0' && s.charAt(0)<='9') || (s.charAt(0)>='a' && s.charAt(0)<='z')))
		{

//			System.out.println("First character must be digit or in lower case");
//			System.exit(0);
                        return 0;
		}
		if (!(firstpart_length>=8 && firstpart_length<=20))
		{
//			System.out.println("lenght must be between 8 to 20");
//			System.exit(0);
                        return 0;
		}
		for (i=1;i<firstpart_length;i++)
		{
			if (!((s.charAt(i)>='0' && s.charAt(i)<='9') ||(s.charAt(i)>='a'&&s.charAt(i)<='z')||(s.charAt(i)=='_')||(s.charAt(i)=='.')))
			{
//				System.out.println("Only digit or lower case or @ or _ allow");
//				System.exit(0);
                                return 0;
			}
		}
		String s2=s.substring((firstpart_length));
		if(( s2.indexOf('.') - s2.indexOf('@') ) - 1 <=2  )
		{
//			System.out.println("domain name must be greater than 2 character between @ and . symbol");
//			System.exit(0);
                        return 0;
		}
		for (i=s2.indexOf('@')+1;i<s2.indexOf('.') ;i++ )
		{
			if (!(s2.charAt(i)>='a' && s2.charAt(i)<='z'))
			{
//				System.out.println("after @ symbol all chharacter in lower case");
//				System.exit(0);
                                return 0;
			}
		}
		for (i=s2.indexOf('.')+1;i<s2.length();i++)
		{
			if (!(s2.charAt(i)>='a' && s2.charAt(i)<='z'))
			{
//				System.out.println("after . symbol all chharacter in lower case");
//				System.exit(0);
                                return 0;
			}
		}
//		System.out.println("Valid");
                return 1;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String uname = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String cpwd = request.getParameter("confirmpwd");
        String email = request.getParameter("email");
        String phno = request.getParameter("phno");

        try {

            int f[]={0,0,0,0,0};
            f[0] = nameValidate(uname);
            f[1]=phonenumberValidate(phno);
            f[2]= passwordValidate(pwd);
            if(cpwd.equals(pwd))
            {
                f[3]=1;
            }
            f[4]=emailValidate(email);
            
            int i=0;
            for(i=0;i<f.length;i++)
            {
                if(f[i]==0)
                {
                    out.println("Invalid Registration");
                    break;
                }           
            }
            if(i==f.length)
                out.println("Registration Sucessfully");
            
//            int temp=0;
//            int flag[] = {0,0,0,0,0};
//
//            flag[0] = nameValidate(uname);
//            if(flag[0]==1)
//            {
//                temp++;
//            }
//
//            flag[1]= phonenumberValidate(phno);
//           if(flag[1]==1)
//            {
//                temp++;
//            }
//
//            flag[2]= passwordValidate(pwd);
//            if(flag[2]==1)
//            {
//                temp++;
//            }
//
//
//             flag[3]= confirmPasswordValidate(pwd,cpwd);
//            if(flag[3]==1)
//            {
//                temp++;
//            }
//
//             flag[4]=emailValidate(email);
//               if(flag[4]==1)
//            {
//                temp++;
//            }
//for(int i=0;i<flag.length)
//        if(temp==flag.length)
//        {
//            out.println("<h1>Registration Sucessfully</h1>");
//        }
//        else
//        {
//             out.println("<h1>Invalid Registration</h1>");
//        }

            
           
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
