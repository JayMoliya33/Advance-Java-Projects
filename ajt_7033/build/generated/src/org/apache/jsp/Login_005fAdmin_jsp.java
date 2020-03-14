package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Login_005fAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/Header.jsp");
    _jspx_dependants.add("/Footer.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <title>Login_Admin</title>\n");
      out.write("        <link rel=\"icon\" href=\"img/favicon.png\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- animate CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("        <!-- owl carousel CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("        <!-- themify CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("        <!-- flaticon CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flaticon.css\">\n");
      out.write("        <!-- font awesome CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("        <!-- swiper CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/slick.css\">\n");
      out.write("        <!-- style CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <style>\n");
      out.write("            .button {\n");
      out.write("                padding: 10px 15px;\n");
      out.write("                font-size: 14px;\n");
      out.write("                text-align: center;\n");
      out.write("                cursor: pointer;\n");
      out.write("                outline: none;\n");
      out.write("                color: #fff;\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 15px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover {background-color: #3e22e1}\n");
      out.write("\n");
      out.write("            .button:active {\n");
      out.write("                background-color: #3e8e41;\n");
      out.write("                box-shadow: 0 5px #666;\n");
      out.write("                transform: translateY(4px);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

                String username = "user" ;
              if(session.getAttribute("user")!=null)
                               {
                                     username = session.getAttribute("user").toString();
                                    // out.println("hello"+user);
                               }
         
      out.write("\n");
      out.write("<header class=\"main_menu single_page_menu\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"row align-items-center\">\n");
      out.write("              <div class=\"col-lg-12\">\n");
      out.write("                  <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("                     <a class=\"navbar-brand logo_1\" href=\"index.jsp\"><h2><font color=\"white\">Jay Moliya</font></h2> </a>\n");
      out.write("                     \n");
      out.write("                      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\"\n");
      out.write("                          data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\"\n");
      out.write("                          aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                      </button>\n");
      out.write("\n");
      out.write("                      <div class=\"collapse navbar-collapse main-menu-item justify-content-end\"\n");
      out.write("                          id=\"navbarSupportedContent\">\n");
      out.write("                          <ul class=\"navbar-nav align-items-center\">\n");
      out.write("                              <li class=\"nav-item active\">\n");
      out.write("                                  <a class=\"nav-link\" href=\"index.jsp\">Home</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item dropdown\">\n");
      out.write("                                  <a class=\"nav-link dropdown-toggle\" href=\"Assignment_1.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                      Assignments 1\n");
      out.write("                                  </a>\n");
      out.write("                                  <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"Assignment_1.jsp\">Login Controller</a>\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"table.jsp\">Table Generator</a>\n");
      out.write("\t\t\t\t\t\t\t\t     <a class=\"dropdown-item\" href=\"websitevisitor.jsp\">Page Visitor</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t   <a class=\"dropdown-item\" href=\"registration.jsp\">Registration Controller</a>\n");
      out.write("                                  </div>\n");
      out.write("                              </li>\n");
      out.write("\t\t\t\t\t\t\t  <li class=\"nav-item dropdown\">\n");
      out.write("                                  <a class=\"nav-link dropdown-toggle\" href=\"Assignment_2.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                      Assignments 2\n");
      out.write("                                  </a>\n");
      out.write("                                  <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"Ecommerce.jsp\">Ecommerce </a>\n");
      out.write("                                      <a class=\"dropdown-item\" href=\"CalcController.jsp\">Calculator </a>\n");
      out.write("                                      <a class=\"dropdown-item\" href=\"CtoFConvertor.jsp\">Temprature Controller</a>\n");
      out.write("\t\t\t\t\t\t\t\t     <a class=\"dropdown-item\" href=\"DynamicHtml.jsp\">Dynamic Html</a>\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"Login.jsp\">Login</a>\n");
      out.write("                                  </div>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item dropdown\">\n");
      out.write("                                  <a  class=\"nav-link dropdown-toggle\" href=\"Assignment_2.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                      Assignments 3\n");
      out.write("                                  </a>\n");
      out.write("                                  <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"Login_3.jsp\">Dynamic Login</a>\n");
      out.write("                                      <a class=\"dropdown-item\" href=\"Product_jdbc.jsp\">Product </a>\n");
      out.write("                                  </div>\n");
      out.write("                              </li>\n");
      out.write("                             \n");
      out.write("                               <li class=\"nav-item dropdown\">\n");
      out.write("                                  <a  class=\"nav-link dropdown-toggle\" href=\"Assignment_2.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                      Assignments 4\n");
      out.write("                                  </a>\n");
      out.write("                                  <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"Ecommerce2.jsp\">Dynamic Ecommerce</a>\n");
      out.write("                                      <a class=\"dropdown-item\" href=\"Product_jdbc.jsp\">Product </a>\n");
      out.write("                                  </div>\n");
      out.write("                               </li>\n");
      out.write("\n");
      out.write("                                 <li class=\"d-none d-lg-block\">\n");
      out.write("                                  <a class=\"btn btn-primary\" href=\"Registration_3.jsp\" style=\"margin-left:10px;margin-right:10px;\">Signup</a>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                               <li class=\"nav-item dropdown\">\n");
      out.write("                                <a class=\"nav-link dropdown-toggle\" class=\"btn btn-primary\" href=\"Login_3.jsp\" style=\"margin-right:5px;\">Hi, ");
      out.print(username );
      out.write("</a>\n");
      out.write("                                <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                     <a class=\"dropdown-item\" href=\"\">Profile</a>\n");
      out.write("                                      <a class=\"dropdown-item\" href=\"Logout.jsp\">Logout </a>\n");
      out.write("                                  </div>\n");
      out.write("                               </li>\n");
      out.write("\n");
      out.write("                              \n");
      out.write("                               <li class=\"d-none d-lg-block\">\n");
      out.write("                                  <a href=\"Checkout2.jsp\"><i class=\"fa fa-shopping-cart\" style=\"font-size:30px;color:white;margin-left:20px\"></i></a>\n");
      out.write("                              </li>\n");
      out.write("                              \n");
      out.write("                          </ul>\n");
      out.write("                      </div>\n");
      out.write("                  </nav>\n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("   </header>\n");
      out.write("    <!-- Header part end-->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("        <section class=\"breadcrumb breadcrumb_bg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"breadcrumb_iner text-center\">\n");
      out.write("                            <div class=\"breadcrumb_iner_item\">\n");
      out.write("                                <div class=\"breadcrumb_iner_item\">\n");
      out.write("                                    <div class=\"form\">\n");
      out.write("                                        <form action=\"\" method=\"post\" role=\"form\" class=\"contactForm\" >\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"text\" name=\"username\" class=\"form-control\" placeholder=\"Username\" autocomplete=\"off\" required=\"required\"/>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                            <input type=\"password\" name=\"pwd\" class=\"form-control\" placeholder=\"Password\" autocomplete=\"off\" required=\"required\"/></div>\n");
      out.write("                                            <input type=\"submit\" name=\"login\" value=\"Login\" class=\"button\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                       ");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    ");

        if (request.getParameter("login") != null) {
            try {
                int flag = 0;
                String admin_name = request.getParameter("username");
                String pwd = request.getParameter("pwd");

                // Database Connection
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
                PreparedStatement pstmt = con.prepareStatement("select * from admin where name=? and password=? ");
                pstmt.setString(1, admin_name);
                pstmt.setString(2, pwd);
                ResultSet rs = pstmt.executeQuery();
                out.println("<script>");
                if (rs.next()) {
                    out.println("alert('Admin Login Sucessfully!!')");
                    flag=1;
                } else {
                    out.println("alert('Invalid Username or Password!!')");
                }
                if(flag==1)
                {
                    session.setAttribute("admin",admin_name);
                }
                out.println("</script>");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
                                    
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        ");
      out.write("<footer class=\"footer-area\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row justify-content-between\">\n");
      out.write("                <div class=\"col-sm-6 col-md-4 col-xl-3\">\n");
      out.write("                    <div class=\"single-footer-widget footer_1\">\n");
      out.write("                        <a href=\"index.jsp\"> <h1>Advance Java</h1> </a>\n");
      out.write("                        <p>I'm not a great programmer; I'm just a good programmer with great habits. - Kent Beck</p>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6 col-md-4 col-xl-4\">\n");
      out.write("                    <div class=\"single-footer-widget footer_2\">\n");
      out.write("                        <h4>Newsletter</h4>\n");
      out.write("                        <p>Stay updated with our latest trends Seed heaven so said place winged over given forth fruit.\n");
      out.write("                        </p>\n");
      out.write("                        <form action=\"#\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <div class=\"input-group mb-3\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder='Enter email address'\n");
      out.write("                                        onfocus=\"this.placeholder = ''\"\n");
      out.write("                                        onblur=\"this.placeholder = 'Enter email address'\">\n");
      out.write("                                    <div class=\"input-group-append\">\n");
      out.write("                                        <button class=\"btn btn_1\" type=\"button\"><i class=\"ti-angle-right\"></i></button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        <div class=\"social_icon\">\n");
      out.write("                            <a href=\"#\"> <i class=\"ti-facebook\"></i> </a>\n");
      out.write("                            <a href=\"#\"> <i class=\"ti-twitter-alt\"></i> </a>\n");
      out.write("                            <a href=\"#\"> <i class=\"ti-instagram\"></i> </a>\n");
      out.write("                            <a href=\"#\"> <i class=\"ti-skype\"></i> </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-xl-3 col-sm-6 col-md-4\">\n");
      out.write("                    <div class=\"single-footer-widget footer_2\">\n");
      out.write("                        <h4>Contact us</h4>\n");
      out.write("                        <div class=\"contact_info\">\n");
      out.write("                            <p><span> Name :</span> Jay Moliya </p>\n");
      out.write("                            <p><span> Phone :</span>9664945585</p>\n");
      out.write("                            <p><span> Email : </span>jaymoliya33200@gmail.com </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <div class=\"copyright_part_text text-center\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-12\">\n");
      out.write("                                <p class=\"footer-text m-0\"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"ti-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- footer part end-->\n");
      out.write("\n");
      out.write("    <!-- jquery plugins here-->\n");
      out.write("    <!-- jquery -->\n");
      out.write("    <script src=\"js/jquery-1.12.1.min.js\"></script>\n");
      out.write("    <!-- popper js -->\n");
      out.write("    <script src=\"js/popper.min.js\"></script>\n");
      out.write("    <!-- bootstrap js -->\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- easing js -->\n");
      out.write("    <script src=\"js/jquery.magnific-popup.js\"></script>\n");
      out.write("    <!-- swiper js -->\n");
      out.write("    <script src=\"js/swiper.min.js\"></script>\n");
      out.write("    <!-- swiper js -->\n");
      out.write("    <script src=\"js/masonry.pkgd.js\"></script>\n");
      out.write("    <!-- particles js -->\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.nice-select.min.js\"></script>\n");
      out.write("    <!-- swiper js -->\n");
      out.write("    <script src=\"js/slick.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.counterup.min.js\"></script>\n");
      out.write("    <script src=\"js/waypoints.min.js\"></script>\n");
      out.write("    <!-- custom js -->\n");
      out.write("    <script src=\"js/custom.js\"></script>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
