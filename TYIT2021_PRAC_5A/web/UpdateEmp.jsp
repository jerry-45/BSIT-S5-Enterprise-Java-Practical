<%-- 
    Document   : UpdateEmp
    Created on : 19 Oct, 2021, 10:38:29 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee Record Update</h1>
        <%
            String eno = request.getParameter("txtEno");
            String name = request.getParameter("txtName");
            String age = request.getParameter("txtAge");
            String sal = request.getParameter("txtSal");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb", "root", "toor123");
                PreparedStatement stmt = con.prepareStatement("SELECT * FROM emp WHERE empid=?");
                stmt.setString(1, eno);
                ResultSet rs = stmt.executeQuery();
                if(rs.next()){
                    out.println("<h1>~~~Employee " + name + " Exist~~~</h1>");
                    PreparedStatement pst1 = con.prepareStatement("UPDATE emp SET salary=? WHERE empid=?");
                    PreparedStatement pst2 = con.prepareStatement("UPDATE emp SET age=? WHERE empid=?");
                    pst1.setString(1, sal);
                    pst1.setString(2, eno);
                    pst2.setString(1, age);
                    pst2.setString(2, eno);
                    
                    pst1.executeUpdate();
                    pst2.executeUpdate();
                }
                else{
                    out.println("<h1>Employee Record not exist</h1>");
                }
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
