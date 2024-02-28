<%-- 
    Document   : index
    Created on : 1 Oct, 2021, 8:28:16 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information Page</title>
    </head>
    <body>
        <form action="validate.jsp">
            Enter Your Name: <input type="text" name="name"><br>
            Enter Your Age: <input type="text" name="age"><br>
            Select Hobbies: 
            <input type="checkbox" name="hob" value="Singing">Singing
            <input type="checkbox" name="hob" value="Reading">Reading Books
            <input type="checkbox" name="hob" value="Football">Playing Football<br>
            Enter Email: <input type="text" name="email"><br>
            Select Gender:
            <input type="radio" name="gender" value="male">Male
            <input type="radio" name="gender" value="female">Female
            <input type="radio" name="gender" value="other">Other<br>
            <input type="hidden" name="error" value="">
            <input type="submit" value="Submit Form">
        </form>
    </body>
</html>
