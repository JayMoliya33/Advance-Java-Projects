<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
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
                    <div class="col-lg-6">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <div class="breadcrumb_iner_item">

                                    <%
        if (request.getParameter("payment") != null) {

               out.println("<script>");
                out.println("alert('Order Placed Sucessfully!!')");
                out.println("</script>");
                
        
                     int pid = Integer.parseInt(request.getParameter("pid"));
                   HashMap<Integer,Integer> cartitems = (HashMap<Integer,Integer>)session.getAttribute("cart");
                   cartitems.remove(pid);
                   session.setAttribute("cart",cartitems);  
				    out.println("<h4><a style='color:aqua;' href='Checkout2.jsp'> Check itmes </a></h4>");}
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

