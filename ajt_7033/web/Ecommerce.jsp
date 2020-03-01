<%-- 
    Document   : Ecommerce
    Created on : 2 Feb, 2020, 7:24:05 PM
    Author     : Jay Moliya
--%>
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
      <%
         // Product(int pid, String name, String description, Double price,int stock)
      Product p[] = new Product[3];
        p[0] = new Product(1,"Cricket Bat","Virat Kohli Popular MRF",2000.0,10);
        p[1] = new Product(2, "Cricket Balls", "Cricket Leather Ball",300.0,20);
        p[2] = new Product(3, "Cricket Kit", "SG Full Cricket Kit with Bag and with Slax ...",6550.0,5);

        for (int i = 0; i < p.length; i++) {
            HashMap<Integer, Product> products = (HashMap<Integer, Product>) application.getAttribute("products");
            if (products == null) {
                products = new HashMap<Integer, Product>();
            }
            products.put(p[i].pid, p[i]);
            application.setAttribute("products", products);
        }
        %>

        <%@include file="Header.jsp" %>

        <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
               <div class="form" style="margin-top:120px;">
              <form action="AddToCart.jsp" method="post" role="form" class="effect">
                <div class="form-group">
                  <img src="img/bat.jpg" style="height:100px;margin-top:10px;" alt="T-shirt"/>
                </div>
                <div class="form-group">
                    <p>Willow Short Handle Bat
                      Virat Kohli Special Popular MRF</p>
                    <p>Price: 2000 INR</p>
                </div>
                <div class="form-group">
                    <input type="number" value="1" name="qty" class="inputtext"/>
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                   <input type="hidden" name="pid" value="1"/>
                    <input type="submit" name="addtocart" value="Add to Cart" class="button"/>
                </div>
              </form>
            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
               <div class="form" style="margin-top:120px">
              <form action="AddToCart.jsp" method="post" role="form" class="effect">
                <div class="form-group">
                  <img src="img/ball.jpg" style="height:100px;margin-top:10px;" alt="T-shirt" />
                </div>
                 <div class="form-group">
                    <p>Forever Online Shopping 1 Cricket Leather Ball</p>
                    <p>Price: 150 INR</p>
                </div>
                <div class="form-group">
                    <input type="number" value="1" name="qty" class="inputtext" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                   <input type="hidden" name="pid" value="2"/>
                    <input type="submit" name="addtocart" value="Add to Cart" class="button"/>
                </div>
                
              </form>
            </div>
                   </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
               <div class="form" style="margin-top:120px;">
              <form action="AddToCart.jsp" method="post" role="form" class="effect">
                <div class="form-group">
                  <img src="img/kit.jpg" style="height:100px;margin-top:10px;" alt="T-shirt" />
                </div>

                <div class="form-group">
                    <p>SG Full Cricket Kit with Bag and with Slax ...</p>
                    <p>Price: 6550 INR</p>
                </div>
                <div class="form-group">
                    <input type="number" value="1" name="qty" class="inputtext" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                   <input type="hidden" name="pid" value="3"/>
                    <input type="submit" name="addtocart" value="Add to Cart" class="button"/>
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

