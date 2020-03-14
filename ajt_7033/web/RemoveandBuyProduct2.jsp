<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Remove and Update Product2</title>
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
            //HashMap <Integer,Product> products=(HashMap <Integer,Product>)application.getAttribute("products");
            int pid=Integer.parseInt(request.getParameter("pid"));

            //Database Connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from products where pid='" + pid + "'");

            // Get "cart" Attribute from Session
            HashMap <Integer,Integer> cartItems=(HashMap <Integer,Integer>)session.getAttribute("cart");

            String op = request.getParameter("operation");
            // For Remove Particular Items
            if(op.equals("Remove"))
            {
                out.println("<h3 style='color:aqua;'>Items removed form cart Sucessfully!!</h3>");
                cartItems.remove(pid);
                session.setAttribute("cart", cartItems);
            }

            // Buy Particular items
            if(op.equals("Buy"))
            {
                if(session.getAttribute("user")!=null)
                {
            %>
                  <!-- payment form -->
    <div class="row mb-4">
           <div class="headingWrap">
			   <h3 class="headingTop text-center" style="color:aqua;margin-top:50px;margin-left:130px;">Select a Payment Method</h3>
		   </div>
    </div>
    <div class="form">
        
    <div class="row">
        <div class="col-lg-12 mx-auto">
            <div class="card">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!--payment form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                             <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link "> <i class="fab fa-credit-card mr-2"></i> Debit/Credit/ATM Card  </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#cod" class="nav-link active "> <i class="fas fa-cod mr-2"></i> Cash on Delivery </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#upi" class="nav-link "> <i class="fab fa-upi mr-2"></i> UPI </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#net-banking" class="nav-link "> <i class="fas fa-mobile-alt mr-2"></i> Net Banking </a> </li>
                        </ul>
                    </div>
                 <div class="tab-content">
                        <!-- COD info-->
                        <div id="cod" class="tab-pane fade show active pt-3">
                             <div class="card-footer">
                             <form action="Payment.jsp" method="post"> <input type="submit" name="payment" class="subscribe btn btn-primary btn-block shadow-sm" value="Confirm Payment"/>
                             <input type="hidden" name="pid" value="<%= pid %>" />
                             </form>
                        </div>
                    </div>
                    <!-- Credit-card info -->
                    <div id="credit-card" class="tab-pane fade pt-3">
                        <h6 class="pb-2">Currently Not Available</h6>
                    </div>
                     <!-- UPI info -->
                    <div id="upi" class="tab-pane fade pt-3">
                        <h6 class="pb-2">Currently Not Available</h6>
                    </div>
                    <!-- bank transfer info -->
                    <div id="net-banking" class="tab-pane fade pt-3">
                        <h6 class="pb-2">Currently Not Available</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

            <%
                }
                else
                {
                    response.sendRedirect("Login_3.jsp");
                }
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

