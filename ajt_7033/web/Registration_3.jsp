<html lang="en">
    <%@page import="java.sql.*" %>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Registration</title>
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

        <%
        if (request.getParameter("submit") != null) {
            String errorMessage = "";
            String username = request.getParameter("name");
            if (!(username.length() >= 6 && username.length() <= 20)) {
                errorMessage += "username must contain 6 to 20 characters";
            }
            String pwd = request.getParameter("pwd");
            int lower = 0, upper = 0, special = 0, digit = 0;
            if (pwd.length() == 0) {
                errorMessage += "<br/>Please Enter the Password";
            } else {

                if (!(pwd.length() >= 6 && pwd.length() <= 20)) {
                    errorMessage += "<br/>Password name be between 6 to 20 characters";
                }

                for (int i = 0; i < pwd.length(); i++) {
                    int charUnicode = pwd.codePointAt(i);

                    if ((charUnicode >= 65 && charUnicode <= 90)) {
                        upper++;
                    }
                    if (charUnicode >= 97 && charUnicode <= 122) {
                        lower++;
                    }
                    if (charUnicode >= 48 && charUnicode <= 57) {
                        digit++;
                    }
                    if (charUnicode >= 32 && charUnicode <= 47) {
                        special++;
                    }
                    if (charUnicode >= 58 && charUnicode <= 64) {
                        special++;
                    }
                    if (charUnicode >= 91 && charUnicode <= 96) {
                        special++;
                    }
                }
                if (lower == 0) {
                    errorMessage += "<br/>Enter atleast one lower case latter in your password";
                }
                if (upper == 0) {
                    errorMessage += "<br/>Enter atleast one upper case latter in your password";
                }
                if (special == 0) {
                    errorMessage += "<br/>Enter atleast one special symbol in your password";
                }
            }
            String cpwd = request.getParameter("cpwd");
            if (!(cpwd.equals(pwd))) {
                errorMessage += "<br/>password and confirm password does not match";
            }
            String email = request.getParameter("email");
            if (email.length() == 0) {
                errorMessage += "<br/>Please enter the valid email address";
            } else {
                int firstCharUnicode = email.codePointAt(0);
                if (!((firstCharUnicode >= 48 && firstCharUnicode <= 57) || (firstCharUnicode >= 97 && firstCharUnicode <= 122))) {
                    errorMessage += "First character must be either in lower case or digit";
                }
                String emailparts[] = email.split("@");
                int emailNameLength = emailparts[0].length();
                if (emailNameLength < 8 || emailNameLength > 20) {
                    errorMessage += "<br/>Username length must be between 8 to 20";
                }
                for (int i = 1; i < emailNameLength; i++) {
                    int charUnicode = emailparts[0].codePointAt(i);
                    if (!((charUnicode >= 48 && charUnicode <= 57) || (charUnicode >= 65 && charUnicode <= 90) || (charUnicode >= 97 && charUnicode <= 122) || (charUnicode == 46) || (charUnicode == 95))) {
                        errorMessage += "<br/>Only a-z, A-Z, 0-9 and underscore and dot are valid";
                    }
                }
                int atPosition = email.indexOf('@');
                if (atPosition == -1) {
                    errorMessage += "<br/>atleast one @ is required";
                }
                if (atPosition != -1) {
                    int dotPosition = email.indexOf('.');
                    if (dotPosition == -1) {
                        errorMessage += "<br/>Domain name is required";
                    }
                    if (dotPosition != -1) {
                        if (dotPosition - atPosition <= 2) {
                            errorMessage += "<br/>distance between @ and . must be more than 2";
                        }
                    }
                }
            }
            String phno = request.getParameter("phno");
            if (!(phno.length() >= 8 && phno.length() <= 11)) {
                errorMessage += "<br/>Phone Number must contain 8 to 11 digits";
            }
            String gender = request.getParameter("gender");
            if ((gender.length() == 0)) {
                errorMessage += "<br/>Please Enter Your Gender.";
            }
            String address = request.getParameter("address");
            String[] hobbies = request.getParameterValues("hobbies");
            if (hobbies.length < 1) {
                errorMessage += "<br/>Please choose minimum 3 hobbies.";
            }
            String choosehobbies = "";

            for (int i = 0; i < hobbies.length; i++) {
                choosehobbies += hobbies[i] + ",";
            }

            if (errorMessage.length() > 0) {
                out.println(errorMessage);
            } else {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "");
                Statement stmt = con.createStatement();
                int row = stmt.executeUpdate("INSERT INTO user (name,password,cpwd,email,phno,address,hobbies,gender) " + "values('" + username + "','" + pwd + "','" + cpwd + "','" + email + "','" + phno + "','" + address + "','" + choosehobbies + "','" + gender + "')");
                if (row > 0) {
                    out.println("<script>");
                    out.println("alert('SignUp Sucessfully')");
                    out.println("</script>");
                }
            // out.println("Thank you for register ! Please <a href='Login_3.jsp'>Login</a> to continue.");}
            }
        }
        %>

        <!--::header part start::-->
        <%@include file="Header.jsp" %>
        <!-- Header part end-->

    <!-- content start-->
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="col-lg-6">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <div class="form" style="margin-top:90px;">
                                <form action="" method="post" role="form" class="contactForm" autocomplete="off">

                                    <div class="form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 6 chars" />
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" name="pwd" class="form-control" id="pwd" placeholder="Your password" data-rule="minlen:4" data-msg="password should be of atleast 6 chars"/>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group">
                                        <input type="password" name="cpwd" class="form-control" id="pwd" placeholder="Confirm password" data-rule="minlen:4" data-msg="password should be of atleast  chars" />
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

                                    <div class="form-group">
                                        <input type="address" name="address" class="form-control" placeholder="Your Address"/>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="form-group" style="margin-right:160px">
                                        <b>Hobbies: </b>
                                        <input id="playing" type="checkbox" name="hobbies" value="playing" checked="checked"><label for="playing"><font color="white"/> playing</label>
                                        <input id="reading" type="checkbox" name="hobbies" value="reading" checked="checked"><label for="reading"><font color="white"/>  reading</label>
                                        <input id="traveling" type="checkbox" name="hobbies" value="traveling"><label for="traveling"><font color="white"/>  traveling <br></label>
                                    </div>

                                    <div class="form-group" style="margin-right:160px">
                                        <b>Please select your gender:</b>
                                        <input id="M" type="radio" name="gender" value="male" checked="checked"><label for="M"><font color="white" /> Male </label>
                                        <input id="F" type="radio" name="gender" value="female"><label for="F"><font color="white"/> Female </label>
                                    </div>

                                    <div class="text-center"><button name="submit" type="submit" class="btn btn-success">SignUp</button></div>
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