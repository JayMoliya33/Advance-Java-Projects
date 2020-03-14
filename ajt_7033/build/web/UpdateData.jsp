<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
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
                                     if(session.getAttribute("admin")!=null){
                                            String pid = request.getParameter("pid");
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
                                            Statement stmt = con.createStatement();
                                            String sql = "select * from products where pid = '"+pid+"' ";
                                            ResultSet rs = stmt.executeQuery(sql);
                                            while(rs.next())
                                            {
                                   %>                
                                     <div class="form">
                                        <form action="Update.jsp" method="post" role="form" class="contactForm">
                                            <div class="form-group">
                                                <input type="hidden" name="pid" value="<%=rs.getInt(1)%>"/>
                                            </div>
                                            <div class="form-group">
                                                 <input type="text" name="pname" value="<%= rs.getString(2)%>" class="form-control" placeholder="Enter Product Name" autocomplete="off"/>
                                            </div>
                                             <div class="form-group">
                                           <input type="number" name="stock" value="<%= rs.getInt(3)%>" class="form-control" placeholder="Enter Product Stocks" autocomplete="off"/>
                                            </div>
                                            <div class="form-group">
                                           <input type="number" name="price" value="<%= rs.getFloat(4)%>" class="form-control" placeholder="Enter Product Price" autocomplete="off"/>
                                            </div>
                                            <div class="form-group">
                                           <input type="text" name="desc" value="<%= rs.getString(5)%>" class="form-control" placeholder="Enter Product Description" autocomplete="off"/>
                                            </div>
                                            <input type="submit" name="update" value="UpdateData" class="button"/>
                                        </form>
                                        <%
                                        }
                                        con.close();
                                      }
                                     else
                                     {
                                         response.sendRedirect("Login_Admin.jsp");
                                     }
                                        %>
                                    </div>                                                   
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

