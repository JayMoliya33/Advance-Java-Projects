package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
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
      out.write("\t\t\t\t\t\t\t\t     <a class=\"dropdown-item\" href=\"DynamicHtml.jsp\">Dynamic Html</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t   <a class=\"dropdown-item\" href=\"CtoFConvertor.jsp\">Temprature Controller</a>\n");
      out.write("                                  </div>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"d-none d-lg-block\">\n");
      out.write("                                  <a class=\"btn_1\" href=\"Checkout.jsp\">Checkout</a>\n");
      out.write("                              </li>\n");
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
