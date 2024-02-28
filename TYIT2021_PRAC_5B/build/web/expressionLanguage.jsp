<%-- 
    Document   : expressionLanguage
    Created on : 2 Oct, 2021, 11:43:33 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expression Language</title>
    </head>
    <body>
        <h1>Expression Language</h1>
        
        Is 9 greater than 10: -
        ${9 > 10}
        
        <br>
        
        Is 10 greater than 9: -
        ${10 > 9}
        
        <br>
        
        Addition is
        ${9 + 2}
        
        <br>
        
        Subtraction is
        ${10 - 2}
        
        <br>
        
        Multiplication is
        ${9 * 2}
        
        <br>
        
        Division is
        ${9 / 2}
        
        <br>

    </body>
</html>
