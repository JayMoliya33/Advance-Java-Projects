<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Display Data</title>
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

