<%-- 
    Document   : act
    Created on : 13.01.2020, 09:57:57
    Author     : Razvan
--%>

<%@page import="com.servlet.Carte"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String unu=request.getParameter("titluCarte");
    String doi=request.getParameter("autorCarte");
    String trei=request.getParameter("pozaCarte");
      String patru=request.getParameter("cantitateCarte");
    int cantitate= Integer.parseInt(patru);
    Carte c= new Carte(unu,doi,trei,cantitate);
    response.sendRedirect("../adaugaCarte.jsp");
%>
