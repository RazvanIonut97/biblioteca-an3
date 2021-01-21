<%-- 
    Document   : LogOut
    Created on : Jan 4, 2020, 1:48:07 PM
    Author     : Razvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    session= request.getSession();
    response.sendRedirect("index.jsp");



%>
