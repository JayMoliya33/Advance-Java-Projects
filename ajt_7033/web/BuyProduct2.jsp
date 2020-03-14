<%@page import="java.util.*, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

<%
        if (session.getAttribute("user") != null) {
            int pid = Integer.parseInt(request.getParameter("pid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdata_jdbc", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from products where pid='" + pid + "'");
            HashMap<Integer, Integer> cartItems = (HashMap<Integer, Integer>) session.getAttribute("cart");
            if (request.getParameter("buysingle") != null) {
                while (rs.next()) {
                    int price = rs.getInt("pprice") * cartItems.get(pid);
                }
                response.sendRedirect("payment.jsp?key=" + pid);
            }
        } else {
            response.sendRedirect("Login_3.jsp");
        }
%>
    </body>
</html>
