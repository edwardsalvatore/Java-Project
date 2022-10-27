<%-- 
    Document   : usercheck
    Created on : Sep 14, 2022, 1:57:17 PM
    Author     : mjawaad
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <%ArrayList<String> userid=new ArrayList<>();%>
   <%ArrayList<String> fname=new ArrayList<>();%>

      <% userid= (ArrayList<String>) request.getAttribute("list1"); %>
   <% fname= (ArrayList<String>) request.getAttribute("list3"); %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <table class="users" id="tblData">
    <thead>
           <tr>
    <th>UserId</th>
    <th>Firrt Name</th>

  </tr>
    </thead>
<% for(int i=0;i<userid.size();i++){
%>
<tr>
    <td><%out.println((String)userid.get(i)); %></td>
    <td><%out.println((String)fname.get(i)); %></td>
 

</tr>
<%}%>
</table>
    </body>
</html>
