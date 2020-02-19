<%-- 
    Document   : Login
    Created on : 10 Feb, 2020, 4:16:45 PM
    Author     : Jay Moliya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
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

        <%@include file="Header.jsp" %>
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <div class="breadcrumb_iner_item">
                                    <div class="form">
                                        <form action="" method="post" role="form" class="contactForm" >
                                            <div class="form-group">
                                           <input type="text" name="username" class="form-control" placeholder="Username" autocomplete="off"/>
                                            </div>
                                             <div class="form-group">
                                             <input type="password" name="pwd" class="form-control" placeholder="Password" autocomplete="off"/></div>
                                            <input type="submit" name="login" value="Login" class="button"/>
                                        </form>
                                    </div>
                                    <%
                                    try{
                                    if(request.getParameter("login")!=null)
                                    {
                                        String uname = request.getParameter("username");
                                       String pwd =  request.getParameter("pwd");
                                        out.println("<script>");
                                        if(uname.equals("admin") && pwd.equals("admin"))
                                        {
                                            out.println("alert('Login Sucessfully!!')");
                                        }
                                        else
                                        {
                                            out.println("alert('Invalid Username or Password!!')");
                                        }
                                        out.println("</script>");
                                    }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
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

