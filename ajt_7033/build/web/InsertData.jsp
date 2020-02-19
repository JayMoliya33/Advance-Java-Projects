<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" import="java.sql.*" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Insert Data</title>
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
                                    <div class="form">
                                        <form action="" method="post" role="form" class="contactForm" >
                                            <div class="form-group">
                                           <input type="text" name="pname" class="form-control" placeholder="Enter Product Name" autocomplete="off"/>
                                            </div>
                                             <div class="form-group">
                                           <input type="number" name="stock" class="form-control" placeholder="Enter Product Stocks" autocomplete="off"/>
                                            </div>
                                            <div class="form-group">
                                           <input type="number" name="price" class="form-control" placeholder="Enter Product Price" autocomplete="off"/>
                                            </div>
                                            <div class="form-group">
                                           <input type="text" name="desc" class="form-control" placeholder="Enter Product Description" autocomplete="off"/>
                                            </div>
                                            <input type="submit" name="insert" value="InsertData" class="button"/>
                                        </form>
                                    </div>
                                    <%                                    
                                    if(request.getParameter("insert")!=null)
                                    {
                                        String pname = request.getParameter("pname");
                                        String stock = request.getParameter("stock");
                                        String price = request.getParameter("price");
                                        String desc = request.getParameter("desc");
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
                                            Statement stmt = con.createStatement();
                                            int rows = stmt.executeUpdate("INSERT INTO products(pid,pname,stock,price,description)values(NULL,'" + pname + "','" + stock + "','" + price + "','" + desc + "')");
                                            out.println("<script>");
                                            out.println("alert('Data Added Sucessfully!!')");
                                            out.println("</script>");
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                      }
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

