<%-- 
    Document   : main
    Created on : Sep 8, 2022, 5:39:50 PM
    Author     : mjawaad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Using GET Method to Read Form Data</title>
   </head>
   
   <body>
      <h1>Using GET Method to Read Form Data</h1>
      <ul>
         <li><p><b>First Name:</b>
            <%= request.getParameter("user_id")%>
         </p></li>
         <li><p><b>Last  Name:</b>
            <%= request.getParameter("last_name")%>
         </p></li>
      </ul>
   
   </body>
</html>
