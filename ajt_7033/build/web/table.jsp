<!doctype html>
<html lang="en">

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
              <form action="TableServlet.do" method="post" role="form" class="contactForm">
                <div class="form-group">
                  <input type="number" name="number" class="form-control" id="number" placeholder="Enter Number" data-rule="minlen:4" data-msg="Please enter at least 1 number" required="required"/>
                  <div class="validation"></div>
                </div>
                 <div class="d-none d-lg-block" class="text-center"><button class="btn_1" type="submit">Generate Table</button></div>
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