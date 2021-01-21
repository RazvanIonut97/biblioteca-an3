<%-- 
    Document   : act
    Created on : 13.01.2020, 09:57:57
    Author     : Razvan
--%>

<%@page import="com.servlet.User"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String unu=request.getParameter("user");
    String doi=request.getParameter("parola");
    String patru=request.getParameter("lvl");
    int statut= Integer.parseInt(patru);
    User a= new User (unu,doi,statut);
    response.sendRedirect("../AdaugaUser.jsp");
%>
