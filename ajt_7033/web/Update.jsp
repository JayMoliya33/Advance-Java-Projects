<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Update Data</title>
        <link rel="icon" href="img/favicon.png">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- animate CSS -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <!-- themify CSS -->
        <link rel="stylesheet" href="css/themify-icons.css">
        <!-- flaticon CSS -->
        <link rel="stylesheet" href="css/flaticon.css">
        <!-- font awesome CSS -->
        <link rel="stylesheet" href="css/magnific-popup.css">
        <!-- swiper CSS -->
        <link rel="stylesheet" href="css/slick.css">
        <!-- style CSS -->
        <link rel="stylesheet" href="css/style.css">
        <style>
            .button {
  padding: 10px 15px;
  font-size: 14px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;

}

.button:hover {background-color: #3e22e1}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
        </style>
    </head>
    <body>

        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <div class="breadcrumb_iner_item">

                                    <%
                                     if(request.getParameter("update")!=null)
                                    {
                                        String pid = request.getParameter("pid");
                                        String pname = request.getParameter("pname");
                                        String stock = request.getParameter("stock");
                                        String price = request.getParameter("price");
                                        String desc = request.getParameter("desc");
                                      
                                            if(pid!=null){
                                                int productid = Integer.parseInt(pid);
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
                                            String sql = "Update products set pid=?,pname=?,stock=?,price=?,description=? where pid='"+pid+"'";
                                            PreparedStatement ps = con.prepareStatement(sql);
                                            ps.setString(1,pid);
                                            ps.setString(2,pname);
                                            ps.setString(3,stock);
                                            ps.setString(4,price);
                                            ps.setString(5,desc);
                                            int i = ps.executeUpdate();                                           
                                            if(i>0){
                                                 out.println("<script>");
                                                out.println("alert('Data Updated Sucessfully!!')");
                                                out.println("</script>");                                            
                                            }
                                            else{
                                                out.println("<script>");
                                                out.println("alert('There Was a problem')");
                                                out.println("</script>");
                                                }                                           
                                           }                                       
                                                          }
                                   //  response.sendRedirect("DisplayData.jsp");
                                    %>
                                    

                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<%@include file="Footer.jsp" %>
    </body>
</html>

