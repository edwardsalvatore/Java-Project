<%-- 
    Document   : readcsv
    Created on : Sep 12, 2022, 5:31:29 PM
    Author     : mjawaad
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="csvReader" method="post" style="margin-inline:45%;"><!-- comment -->
         <input name="sala" id="samm" value="<%=request.getAttribute("fileName")%>" style="border:1px solid white;color:black;font-size: 20px;text-align: center" >
           <button type="submit" class="btn" >ADD USER </button>
          </form> 
        <h1>Users Success fully added </h1>
    </body>
</html>
