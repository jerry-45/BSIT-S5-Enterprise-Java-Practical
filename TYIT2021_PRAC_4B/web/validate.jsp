<%-- 
    Document   : validate
    Created on : 1 Oct, 2021, 8:29:29 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation Page</title>
    </head>
    <body>
        <h1>Validation Page</h1>
        
        <jsp:useBean id="obj" scope="request" class="mypack.CheckerBean">
            <jsp:setProperty name="obj" property="*"/>
        </jsp:useBean>
        
        <%if(obj.validate()){%>
        
        <jsp:forward page="successfull.jsp"/>
        
        <%}else{%>
        
        <jsp:include page="index.jsp"/>
        
        <%}%>
        
        <%=obj.getError()%>
    </body>
</html>
