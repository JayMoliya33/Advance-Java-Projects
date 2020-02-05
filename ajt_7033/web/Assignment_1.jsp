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
                    <div class="col-lg-12">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <section>
                                    <div class="container-fluid" >
                                        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/milestones.jpg"></div>
                                        <div class="row wow fadeInUp">
                                            <div class="col-lg-6">
                                                <div class="row">
                                                    <div class="col-md-4 info">
                                                    </div>
                                                    <div class="col-md-3 info">
                                                    </div>
                                                </div>
                                                <div class="form">
                                                    <form action="LoginServlet.do" method="post" role="form" class="contactForm" autocomplete="off">
                                                        <div class="form-group">
                                                            <input type="text" name="name" class="form-control" id="name" placeholder="Enter UserName" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required="required"/>
                                                            <div class="validation"></div>
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="password" name="pwd" class="form-control" id="pwd" placeholder="Enter Password" data-rule="minlen:4" data-msg="password should be of atleast 4 chars" required="required"/>
                                                            <div class="validation"></div>
                                                        </div>
                                                          <div class="d-none d-lg-block" class="text-center"><button class="btn_1" type="submit">Login</button></div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </section>
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