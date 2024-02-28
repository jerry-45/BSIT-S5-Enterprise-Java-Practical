<%-- 
    Document   : jstl
    Created on : 2 Oct, 2021, 11:55:13 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Example</title>
    </head>
    <body>
        
    <c:forEach var="count" begin="1" end="20" step="2">
        <c:out value="${count}"/>
    </c:forEach>
    
    </body>
</html>
