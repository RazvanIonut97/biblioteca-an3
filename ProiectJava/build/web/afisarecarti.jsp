<%-- 
    Document   : afisarecarti
    Created on : Jan 7, 2020, 1:46:41 AM
    Author     : Razvan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.servlet.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="afisareCarti">
<%
            try{
                DBConnection a= new DBConnection();
                Statement statement=a.conexiune.createStatement();
               String cautal= request.getParameter("cauta");
               String comanda;
               if (cautal!=null){
               comanda="select *from tabbook where titlu like'%"+cautal+"%' or autor like'%"+cautal+"%'" ; }
               else {comanda="select *from tabbook";}
                ResultSet rs = statement.executeQuery(comanda);
              
                    
while (rs.next()) {
%>
<div class="automat">
<div class="carte">
<img src="<%=rs.getString(4)%>">
</div>
<div class="info">
    <h6><%=rs.getString(2)%>,
<%=rs.getString(3)%></h6>
</div>
<div class="adauga">
    <form action="cos.jsp" method="post">
        <input type="hidden"  name="idCarte" value="<%=rs.getInt(1)%>">
    
        
        <%
        if(session.getAttribute("verificare")!=null &&rs.getInt(5)!=0){
         out.println("<input type='number' value='1' name='cantitate' min='1' max='"+rs.getInt(5)+"'>");
        out.println("<button type='submit'>Adauga</button>");}
        else {
            out.println("<p><b>Disponibile: "+rs.getInt(5)+"</b></p>");
        
        }
        
        %>
       
        
    </form>
    
</div>

</div>


<% } 
rs.close();
statement.close();
a.conexiune.close();
} catch (Exception ex) {
out.println("Unable to connect to database.");
}
%>
</div>
