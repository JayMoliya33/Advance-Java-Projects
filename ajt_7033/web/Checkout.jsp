<%@page contentType="text/html" import="java.util.*,com.vvp.web.Product"%>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"  >
    <title>Checkout</title>
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
     <%
        int srno = 1;
        double finalTotal = 0;
        HashMap<Integer, Integer> cartitems = (HashMap<Integer, Integer>) session.getAttribute("cart");
        if (cartitems != null) {
            HashMap<Integer, Product> prd = (HashMap<Integer, Product>) application.getAttribute("products");
            if (cartitems != null) {
                if (cartitems.size()!= 0) {
                    out.println("<table border='1' class='table table-hover table-dark'>");
                    out.println("<tr align='center'>");
                    out.println("<th>Sr No.</th>");
                    out.println("<th>Name of Products</th>");
                    out.println("<th>Quantity</th>");
                    out.println("<th>Price</th>");
                    out.println("<th>Remove</th>");
                    out.println("<th>Buy</th>");
                    out.println("</tr>");
                    for (Integer i : cartitems.keySet()) {
                        Product p = prd.get(i);
                        finalTotal += p.getPrice() * cartitems.get(i); // productprice*quantity
                        out.println("<tr><td>" + (srno++) + "</td><td>" + p.getName() + "</td> <td>" + cartitems.get(i) + "</td><td>" + p.getPrice() + "</td>");
                        out.println("<td><form action='RemoveProduct.jsp' method='get'> <input type='hidden' name='pid' value='" +p.getPid() + "'> <input type='submit' value='Remove' class='btn btn-danger' name='operation'/></form> </td>"
                                +"<td> <form action='Ecommerce.jsp'> <input type='hidden' name='pid' value='" + p.getPid() + "'> <input type='submit' class='btn btn-success' value='Buy' name='operation'/></form> </td> </tr>");
                    }
                    out.println("</table>");
                    out.println("<h3 style='color:aqua;'>Total Payable : " + finalTotal + " Rs.</h3>");
                } else {
                    out.println("<h3 style='color:aqua;'>Your Cart is Empty!!!</h3>");
                }
            }
        } else {
            out.println("<h3 style='color:aqua;'>Your Cart is Empty!!!</h3>");
        }
                        %>
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