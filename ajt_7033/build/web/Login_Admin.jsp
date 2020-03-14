<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login_Admin</title>
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
                    <div class="col-lg-6">
                        <div class="breadcrumb_iner text-center">
                            <div class="breadcrumb_iner_item">
                                <div class="breadcrumb_iner_item">
                                    <h3 style='color:aqua;'>Admin Login</h3>

                                    <div class="form">
                                        <form action="" method="post" role="form" class="contactForm" style="margin-top:15px;">
                                            <div class="form-group">
                                                <input type="text" name="username" class="form-control" placeholder="Username" autocomplete="off" required="required"/>
                                            </div>
                                            <div class="form-group">
                                            <input type="password" name="pwd" class="form-control" placeholder="Password" autocomplete="off" required="required"/></div>
                                            <input type="submit" name="login" value="Login" class="button"/>
                                        </form>
                                       <%-- <div class="form-group">
                                        <p style="color:aqua;">New User? <a href="Registration_3.jsp">Registration</a></p></div> --%>
                                    </div>
                                    <%
        if (request.getParameter("login") != null) {
            try {
                int flag = 0;
                String admin_name = request.getParameter("username");
                String pwd = request.getParameter("pwd");

                // Database Connection
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
                PreparedStatement pstmt = con.prepareStatement("select * from admin where name=? and password=? ");
                pstmt.setString(1, admin_name);
                pstmt.setString(2, pwd);
                ResultSet rs = pstmt.executeQuery();
                out.println("<script>");
                if (rs.next()) {
                    out.println("alert('Admin Login Sucessfully!!')");
                    flag=1;
                } else {
                    out.println("alert('Invalid Username or Password!!')");
                }
                if(flag==1)
                {
                    session.setAttribute("admin",admin_name);
                }
                out.println("</script>");
            } catch (Exception e) {
                e.printStackTrace();
            }
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

