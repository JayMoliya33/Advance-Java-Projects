<%-- 
    Document   : Ecommerce
    Created on : 2 Feb, 2020, 7:24:05 PM
    Author     : Jay Moliya
--%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Advance Java Projects</title>
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
        </style>
    </head>
    <body>
        <%! int pid,qty;
        %>

        <%
       
        if(request.getParameter("cart")!=null)
            {
                HashMap<Integer,Integer> cartitem = null;
                 qty= Integer.parseInt(request.getParameter("qty"));
                 pid= Integer.parseInt(request.getParameter("pid"));
                   cartitem = (HashMap<Integer,Integer>)application.getAttribute("cart");
                if(cartitem==null)
                {
                    cartitem= new HashMap<Integer,Integer>();
                }
                cartitem.put(new Integer(pid), new Integer(qty));
                application.setAttribute("cart",cartitem);


            }
       %>

        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                                   <div class="form">
              <form action="AddToCart.jsp" method="post" role="form" class="contactForm">
                <div class="form-group">
                  <img src="img/tshirt.jpg" style="height:100px;" alt="T-shirt"/>
                </div>
                <div class="form-group">
                    <input type="number" value="1" name="qty" class="form-control" id="number" data-rule="minlen:4"/>
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                    <p>WWE T-shirt</p>
                    <p>The Shield WWE T-shirt</p>
                    <p>450 INR</p>
                </div>
                <div class="form-group">
                   <input type="hidden" name="pid" value=""/>
                    <input type="submit" name="cart" value="Add to Cart" class="button"/>
                </div>
              </form>
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

