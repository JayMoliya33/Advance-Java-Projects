<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Dynamic Html</title>
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
        <%! int n;%>
        <%
        // if (request.getParameter("number") != null) {

        if ((request.getParameter("Reset") != null)) {
            n = 0;
        } else {
            n = Integer.parseInt(request.getParameter("number"));
        }

        %>

        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <div class="breadcrumb_iner_item">
                                    <div class="form">
                                        <form action="DynamicHtml.jsp" method="post" role="form" class="contactForm" >
                                            <div class="form-group">
                                                <label style="color:aqua; font-style:oblique; font-size:large;">Enter Number to generate Textboxes</label>
                                                <input type="text" name="number" class="form-control" id="number" placeholder="Number" data-rule="minlen:4" autocomplete="off"/>
                                            </div>
                                            <div class="d-none d-lg-block" class="text-center">
                                               <button type="submit" class="button" >Generate</button>
                                            <input type="submit" name="Reset" value="Reset" class="button"/>
                                            </div>
                                        </form>
                                    </div>

<%
        for (int i = 0; i < n; i++) {
            
%>
<div class="form-group">
    <input type="text" name="number" class="form-control" id="number" placeholder="Textboxes" data-rule="minlen:4" data-msg="Please enter at least 1 number" />
</div>
<%        }
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
