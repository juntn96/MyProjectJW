<%-- 
    Document   : show.jsp
    Created on : Dec 2, 2016, 5:00:57 PM
    Author     : q
--%>

<%@page import="model.Cloth"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% ArrayList<Cloth> cloths = (ArrayList<Cloth>) request.getAttribute("cloths"); %>
    </head>
    <body>
        <% for (Cloth c : cloths) {%>
        <img src="<%= c.getPath()  %>" alt="Mountain View">
        <%}%>
    </body>
</html>
