<%@page import="java.util.*,com.vvp.web.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add to Cart</title>
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

        <%
        if(request.getParameter("addtocart")!=null)
            {
                 int qty= Integer.parseInt(request.getParameter("qty"));
                 int pid= Integer.parseInt(request.getParameter("pid"));
                HashMap<Integer,Integer> cartitem = (HashMap<Integer,Integer>)session.getAttribute("cart");;
                 if(cartitem==null)
                {
                    cartitem= new HashMap<Integer,Integer>();
                }
                cartitem.put(pid ,qty);
                session.setAttribute("cart",cartitem);

            }
       %>
       
        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                             <h4 style="color:aqua;">Items Added to cart Sucessfully!</h4>
                             <h4><a href="Ecommerce.jsp">Buy More Items.....</a></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
        <%@include file="Footer.jsp" %>

    </body>
</html>

