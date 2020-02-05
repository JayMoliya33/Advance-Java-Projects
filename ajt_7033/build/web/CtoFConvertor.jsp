<%-- 
    Document   : CtoFConvertor
    Created on : 31 Jan, 2020, 11:01:28 AM
    Author     : Jay Moliya
--%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
         <!-- Required meta tags -->
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
        <%!
                double f,c;
        %>

        <%
            if(request.getParameter("convert")!=null)
            {
                HashMap<Double,Double> history = null;
                 c = Double.parseDouble(request.getParameter("number"));
                f = (c*9.0/5.0)+32.0;
                history = (HashMap<Double,Double>)application.getAttribute("convertor");
                if(history==null)
                {
                    history= new HashMap<Double,Double>();
                }
                history.put(new Double(c), new Double(f));
                application.setAttribute("convertor",history);
            }
        %>

        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                           <div class="form">
              <form action="CtoFConvertor.jsp" method="post" role="form" class="contactForm">
                <div class="form-group">
                  <input type="number" name="number" class="form-control" id="number" placeholder="Enter Temprature in Celsius" data-rule="minlen:4" data-msg="Please enter at least 1 number" required="required"/>
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                    <input type="number" value="<%= f %>" class="form-control" id="number" data-rule="minlen:4"/>
                  <div class="validation"></div>
                </div>
                 <div class="d-none d-lg-block" class="text-center">
                     <button type="submit" name="convert">Convert to Fahrenheit</button>
                 </div>
                <a href="History.jsp" style="color:white; margin-top:20px;" class="btn_1">Check History</a>
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
