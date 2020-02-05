
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
    </head>
    <body>

        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                          <%
                          if(application.getAttribute("convertor")!=null)
                          {
                          HashMap<Double,Double>  history = (HashMap<Double,Double>)application.getAttribute("convertor");
                              for (Map.Entry<Double, Double> ent : history.entrySet())
                              {
                                  System.out.println(ent.getKey());
                              //System.out.println(ent.getKey()+" ==> "+ent.getValue());
                                  // out.println(pair.getKey(),pair.getValue());
                              }
                              }
                           %>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
        <%@include file="Footer.jsp" %>

    </body>
</html>
