<%-- 
    Document   : cos
    Created on : 10.01.2020, 11:26:49
    Author     : Razvan
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.servlet.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  String user1= session.getAttribute("ID").toString();
  String idProdus1=request.getParameter("idCarte");
  String cantitate1=request.getParameter("cantitate");
  int user=Integer.parseInt(String.valueOf(user1));
  int idProdus=Integer.parseInt(String.valueOf(idProdus1));
  
  
   int cantitate=Integer.parseInt(String.valueOf(cantitate1));
     try{
  
  DBConnection conn=new DBConnection();
                String Query="insert into tabtemp(iduser,idcarte,cantitate) values("+user+","+idProdus+","+cantitate+")";
           
                Statement stat=conn.conexiune.createStatement();
               stat.executeUpdate(Query);
                response.sendRedirect("index.jsp");
     
     }
     catch(Exception ex){
         %><p><%=ex%></p><%
     
     
     }
%>
