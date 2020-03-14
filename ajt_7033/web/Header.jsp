<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
         <%
                String username = "user" ;
              if(session.getAttribute("user")!=null)
                               {
                                     username = session.getAttribute("user").toString();
                                    // out.println("hello"+user);
                               }
         %>
<header class="main_menu single_page_menu">
      <div class="container">
          <div class="row align-items-center">
              <div class="col-lg-12">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <a class="navbar-brand logo_1" href="index.jsp"><h2><font color="white">Jay Moliya</font></h2> </a>
                     
                      <button class="navbar-toggler" type="button" data-toggle="collapse"
                          data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                          aria-expanded="false" aria-label="Toggle navigation">
                          <span class="navbar-toggler-icon"></span>
                      </button>

                      <div class="collapse navbar-collapse main-menu-item justify-content-end"
                          id="navbarSupportedContent">
                          <ul class="navbar-nav align-items-center">
                              <li class="nav-item active">
                                  <a class="nav-link" href="index.jsp">Home</a>
                              </li>
                              <li class="nav-item dropdown">
                                  <a class="nav-link dropdown-toggle" href="Assignment_1.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      Assignments 1
                                  </a>
                                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                     <a class="dropdown-item" href="Assignment_1.jsp">Login Controller</a>
                                     <a class="dropdown-item" href="table.jsp">Table Generator</a>
								     <a class="dropdown-item" href="websitevisitor.jsp">Page Visitor</a>
									   <a class="dropdown-item" href="registration.jsp">Registration Controller</a>
                                  </div>
                              </li>
							  <li class="nav-item dropdown">
                                  <a class="nav-link dropdown-toggle" href="Assignment_2.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      Assignments 2
                                  </a>
                                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                     <a class="dropdown-item" href="Ecommerce.jsp">Ecommerce </a>
                                      <a class="dropdown-item" href="CalcController.jsp">Calculator </a>
                                      <a class="dropdown-item" href="CtoFConvertor.jsp">Temprature Controller</a>
								     <a class="dropdown-item" href="DynamicHtml.jsp">Dynamic Html</a>
                                     <a class="dropdown-item" href="Login.jsp">Login</a>
                                  </div>
                              </li>
                              <li class="nav-item dropdown">
                                  <a  class="nav-link dropdown-toggle" href="Assignment_2.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      Assignments 3
                                  </a>
                                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                     <a class="dropdown-item" href="Login_3.jsp">Dynamic Login</a>
                                      <a class="dropdown-item" href="Product_jdbc.jsp">Product </a>
                                  </div>
                              </li>
                             
                               <li class="nav-item dropdown">
                                  <a  class="nav-link dropdown-toggle" href="Assignment_2.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      Assignments 4
                                  </a>
                                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                     <a class="dropdown-item" href="Ecommerce2.jsp">Dynamic Ecommerce</a>
                                      <a class="dropdown-item" href="Product_jdbc.jsp">Product </a>
                                  </div>
                               </li>

                                 <li class="d-none d-lg-block">
                                  <a class="btn btn-primary" href="Registration_3.jsp" style="margin-left:10px;margin-right:10px;">Signup</a>
                                </li>

                               <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" class="btn btn-primary" href="Login_3.jsp" style="margin-right:5px;">Hi, <%=username %></a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                     <a class="dropdown-item" href="">Profile</a>
                                     <a class="dropdown-item" href="Login_Admin.jsp">Admin Login</a>
                                      <a class="dropdown-item" href="Logout.jsp">User Logout </a>
                                      <a class="dropdown-item" href="Logout_Admin.jsp">Admin Logout </a>
                                  </div>
                               </li>

                              
                               <li class="d-none d-lg-block">
                                  <a href="Checkout2.jsp"><i class="fa fa-shopping-cart" style="font-size:30px;color:white;margin-left:20px"></i></a>
                              </li>
                              
                          </ul>
                      </div>
                  </nav>
              </div>
          </div>
      </div>
   </header>
    <!-- Header part end-->

    </body>
</html>