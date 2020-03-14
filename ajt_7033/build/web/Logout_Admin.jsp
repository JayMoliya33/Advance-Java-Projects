<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Logout</title>
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
                <div class="col-lg-3">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">


                   <%
                   if(session.getAttribute("admin")!=null)
                   {
                       String name = session.getAttribute("admin").toString();
                       session.invalidate();

                       out.println("<script>");
                       out.println("alert('Admin Logout Sucessfully!!!')");
                       out.println("</script>");
                       out.println("<a class='btn btn-primary' href='Login  _Admin.jsp' style='margin-top:10px;margin-left:10px;margin-right:10px;'>Login Admin</a>");
                   }
                   else
                   {
                       out.println("<h3 style='color:aqua;'>Login First!!</h3>");
                       out.println("<a class='btn btn-primary' href='Logout_Admin.jsp' style='margin-top:10px;margin-left:10px;margin-right:10px;'>Login Admin</a>");
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

