<%-- 
    Document   : sterge
    Created on : 10.01.2020, 15:00:05
    Author     : Razvan
--%>

<%@page import="java.sql.Statement"%>
<%@page import="com.servlet.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String sterge11=request.getParameter("sterge1");

    
    int sterge1=Integer.parseInt(sterge11);

    try{
  
  DBConnection conn=new DBConnection();
                String Query=" DELETE FROM tabtemp WHERE id="+sterge1+"";
           
                Statement stat=conn.conexiune.createStatement();
               stat.executeUpdate(Query);
                response.sendRedirect("index.jsp");
     
     }
     catch(Exception ex){
         %><p><%=ex%></p><%
     
     
     }
%>
