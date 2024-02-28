<%-- 
    Document   : Login
    Created on : 19 Oct, 2021, 10:57:15 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <%
            String uname = request.getParameter("txtName");
            String pass = request.getParameter("txtPass");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindb", "root", "toor123");
                PreparedStatement stmt = con.prepareStatement("select password from user where username=?");
                stmt.setString(1, uname);
                ResultSet rs = stmt.executeQuery();
                if(rs.next()){
                    if(pass.equals(rs.getString(1))){
                        out.println("<h1>Login Successfull</h1>");
                    }
                }
                else{
                    out.println("<h1>Username not exist!!!<h1>");
        %>
        
        <jsp:include page="Register.html"></jsp:include>
        
        <%
                }
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
