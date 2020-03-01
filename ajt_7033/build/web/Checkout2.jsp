<%@page import="java.sql.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"  >
    <title>Checkout</title>
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
</head>

<body>

<!--::header part start::-->
<%@include file="Header.jsp" %>
<!-- Header part end-->

<!-- content start-->
<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="breadcrumb_iner text-center">
                    <div class="breadcrumb_iner_item">
     <%
        int srno = 1;
        double finalTotal = 0;
        HashMap<Integer, Integer> cartitems = (HashMap<Integer, Integer>) session.getAttribute("cart");
        if (cartitems != null) {
                if (cartitems.size()!= 0) {
      %>
                    <table border="1" class="table table-hover table-dark">
                                            <tr>
                                                <th>Product Id</th>
                                                <th>Product Name</th>
                                                <th>Stock</th>
                                                <th>Price</th>
                                                <th>Description</th>
                                                <th>Operation</th>
                                                 <th>Operation</th>
                                            </tr>
                                        <%
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
                                                Statement stmt = con.createStatement();
                                                ResultSet rs = stmt.executeQuery("Select * from products");
                                                while(rs.next())
                                                {
                                       %>
                                                  <tr>
                                                   <td><%= rs.getInt(1) %></td>
                                                   <td><%= rs.getString(2)%></td>
                                                   <td><%= rs.getInt(3)%></td>
                                                   <td><%= rs.getFloat(4)%></td>
                                                   <td><%= rs.getString(5)%></td>
                                                   <td><a href="UpdateData.jsp?pid=<%= rs.getInt(1)%>">Update</a></td>
                                                   <td><a href="DeleteData.jsp?pid=<%= rs.getInt(1)%>">Delete</a></td>
                                                   </tr>
                                           <%
                                                 }
                                                    stmt.close();
                                                    con.close();
                                            %>
                                        </table>  
                               
               <%     }
                 
                    out.println("<h3 style='color:aqua;'>Total Payable : " + finalTotal + " Rs.</h3>");
                } else {
                    out.println("<h3 style='color:aqua;'>Your Cart is Empty!!!</h3>");
                }
            }
         %>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</section>
<!-- content end-->

<!-- footer part start-->
<%@include file="Footer.jsp" %>
<!-- footer part end-->

</body>
</html>