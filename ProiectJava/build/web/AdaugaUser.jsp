<%-- 
    Document   : adaugaCarte
    Created on : 13.01.2020, 09:33:31
    Author     : Razvan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.servlet.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stil.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="unu">
        <form action="act/actAddUser.jsp">
            <input type="text"   placeholder="User" name="user" required><br>
             <input type="password"   placeholder="parola" name="parola" required><br>
             <input type="number"   placeholder="statut" value='1' min='1' max="3" name="lvl" required><br>
               <input type="submit"  >
            
        </form>
        <a href="index.jsp"><button type="submit">Acasa</button></a>

</div>
        <div class="doi">
            <table>
                  <tr>
    <th>Username</th>
    <th>Statut</th>
  </tr>
            <%
            try{
                DBConnection a= new DBConnection();
                Statement statement=a.conexiune.createStatement();
              
               String comanda="select *from login " ; 
               
                ResultSet rs = statement.executeQuery(comanda);
              
                    
while (rs.next()) {%>


<tr>
    <th><b><%=rs.getString(2) %></b></th>
<th><b><%=rs.getString(4)%></b></th>

</tr>
<%
}}
            catch(Exception ex){
    out.println(ex);
            } %>

          </table>   
        </div>
        
    </body>
</html>
