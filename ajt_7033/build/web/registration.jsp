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
                <div class="col-lg-6">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">

                            <div class="form">
                                <form action="RegistrationServlet.do" method="post" role="form" class="contactForm" autocomplete="off">

                                    <div class="form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 6 chars" />
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" name="pwd" class="form-control" id="pwd" placeholder="Your password" data-rule="minlen:4" data-msg="password should be of atleast 6 chars"/>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" name="confirmpwd" class="form-control" id="pwd" placeholder="Confirm password" data-rule="minlen:4" data-msg="password should be of atleast  chars" />
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email"/>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group">
                                        <input type="tel" name="phno" class="form-control" id="phno" placeholder="Your Phone Number" data-rule="len:10"  />
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group" style="margin-right:260px">
                                        <b>Please select your gender:</b>
                                        <input id="M" type="radio" name="gender" value="male"><label for="M"><font color="white"/> Male </label>
                                        <input id="F" type="radio" name="gender" value="female"><label for="F"><font color="white"/> Female </label>

                                    </div>

                                    <div class="text-center"><button type="submit">Submit</button></div>
                                </form>

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