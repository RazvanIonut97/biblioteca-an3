<%-- 
    Document   : index
    Created on : Nov 30, 2019, 10:56:28 PM
    Author     : Razvan
--%>


<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="com.servlet.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>LBB </title>
        <link rel="stylesheet" type="text/css" href="stiluri.css">
        <link rel="shortcut icon" href="poze/book.ico" type="image/x-icon">
    </head>
<body>

 <%
if(session.getAttribute("verificare")==null){%>
<%@include file='log/topNelog.jsp'%>
 <%   }else{%>
<%@include file='log/topLog.jsp'%>
<%   }
     %>
<div class="mid">
    
 <%
 
if(session.getAttribute("verificare")==null){ %>
<%@include file='utile/utileNelogat.jsp'%>
 <%  }else{ 
    String test=session.getAttribute("status").toString();
   int test2=Integer.parseInt(test);
    switch(test2){
        case 10:
            %>
            <%@include file='utile/utileAdmin.jsp'%>
            
           <% break;
            case 1:%>
            <%@include file='utile/utileUser.jsp'%>
            
            <%break;
           
            
    }
}
     %>
     
    <%@include file="afisarecarti.jsp" %>
</div>







<div class="bott">

</div>



</body>
</html>
