<%@page import="java.sql.*" %>
<%@page import="java.util.*,com.vvp.web.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ecommerce</title>
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
            .button{
                background-color: white;
                 color: black;
                    border: 2px solid #4CAF50;
                    border-radius: 12px;
            }
            .button:hover {
  background-color: #4CAF50; /* Green */
  color: white;
}
        .effect{
            border: 2px solid #4CAF50;
                    border-radius: 15px;
            }
         .effect:hover{
            -moz-box-shadow: 0 0 10px #ccc;
      -webkit-box-shadow: 0 0 10px #ccc;
      box-shadow: 0 0 10px #ccc;
             }
             .inputtext{width:87%;height:calc(1.5em + .75rem + 2px);padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#495057;background-color:#fff;border:1px solid #ced4da;border-radius:.25rem;}
        </style>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
       <%
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("Select * from products");
             while (rs.next()) {
                   String img = "img/" + rs.getString("pimg");
        %>

                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <div class="form" style="margin-top:120px;">
                                <form action="AddToCart2.jsp" method="post" role="form" class="effect">
                                    <div class="form-group">
                                        <img src="<%= img %>" style="height:100px;margin-top:10px;" alt="T-shirt"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" name="pid" value="<%= rs.getInt("pid")%>"/>
                                        <p><%= rs.getString("pname")%></p>
                                        <p><%= rs.getString("description")%></p>
                                        <p>Price : <%= rs.getFloat("price")%></p>
                                         <p>Stock : <%= rs.getInt("stock")%></p>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" value="1" name="qty" class="inputtext"/>
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" name="addtocart" value="Add to Cart" class="button"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <% }%>
            </div>
        </div>
    </section>
    <%@include file="Footer.jsp" %>

    </body>
</html>

