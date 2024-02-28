<%-- 
    Document   : jsp
    Created on : 5 Oct, 2021, 10:59:28 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String s1 = request.getParameter("t1");
            int n = Integer.parseInt(s1);
            
            if(n % 2 == 0){
                out.println("Number is even.");
            }
            else{
                out.println("Number is odd.");
            }
        %>
        
    </body>
</html>
