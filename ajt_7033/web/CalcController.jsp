<!doctype html>
<%@page errorPage="error.jsp" contentType="text/html"%>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"  >
        <title>Calculator</title>
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
                .btn1{
                    background-color: white;
                 color: black;
                 height:40px;
                 width:70px;
                    border: 2px solid #4CAF50;
                    border-radius: 5px;
                }
                 .btn1:hover {
  background-color: #4CAF50; /* Green */
  color: white;}
            </style>
    </head>

    <body>
        <%! double result = 0.0;

    public static double addition(double a, double b) {
        return (a + b);
    }

    public static double subtraction(double a, double b) {
        return (a - b);
    }

    public static double division(double a, double b) {
        return (a / b);
    }

    public static double multiplication(double a, double b) {
        return (a * b);
    }
        %>

        <%
        if (request.getParameter("operation") != null) {
            double a = Double.parseDouble(request.getParameter("n1"));
            double b = Double.parseDouble(request.getParameter("n2"));
            char op = request.getParameter("operation").charAt(0);
            switch (op) {
                case '+':
                    result = addition(a, b);
                            break;
                case '-':
                    result = subtraction(a, b);
                            break;
                case '/':
                    result = division(a, b);
                             break;
                case '*':
                    result = multiplication(a, b);
                             break;
                default:  out.println("Invalid");
            }
        }
        %>

        <!--::header part start::-->
        <%@include file="Header.jsp" %>
        <!-- Header part end-->

    <!-- content start-->
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <div class="form">
                                    <form action="CalcController.jsp" method="post" role="form" class="contactForm" autocomplete="off">
                                        <div class="form-group">
                                            <input type="text" name="n1" class="form-control" value="" id="number" placeholder="Enter Number 1"/>
                                            <div class="validation"></div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="n2" class="form-control" value="" id="number" placeholder="Enter Number 2" />
                                            <div class="validation"></div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="" value="<%= result%>" class="form-control" value="" placeholder="Enter Number 1" required="required"/>
                                            <div class="validation"></div>
                                        </div>
                                        <input type="submit" name="operation" value="+" class="btn1"/>
                                        <input type="submit" name="operation" value="*" class="btn1"/>
                                        <input type="submit" name="operation" value="-" class="btn1"/>
                                        <input type="submit" name="operation" value="/" class="btn1"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- content end-->

    <!-- footer part start-->
        <%@include file="Footer.jsp" %>
        <!-- footer part end-->
    </body>
</html>