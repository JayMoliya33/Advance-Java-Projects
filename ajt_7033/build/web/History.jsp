
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CtoF History</title>
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
      <% int no = 1;
        if (application.getAttribute("convertor") != null)
         {
            HashMap<Double, Double> history = (HashMap<Double, Double>) application.getAttribute("convertor");
            
            out.println("<table border='1' class='table table-hover table-dark'>");
            out.println("<tr align='center'>");
            out.println("<th>No.</th>");
            out.println("<th>Celsius</th>");
            out.println("<th>Fahrenheit</th>");
            out.println("</tr>");
            for (Map.Entry<Double, Double> d : history.entrySet())
            {
                out.println("<tr align='center'><td>" + (no++) + "</td><td>" + d.getKey() + "</td><td>" + d.getValue() + "</td></tr>");
            }
              out.println("</table>");
        }
      else
      {
          out.println("<h3 style='color:aqua;'>History is empty</h3>");
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
