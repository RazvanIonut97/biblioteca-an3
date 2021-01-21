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
        <form action="act/actAdd.jsp">
            <input type="text"   placeholder="Titlu carte" name="titluCarte" required><br><br>
             <input type="text"   placeholder="Autor" name="autorCarte" required><br><br>
              <input type="text"   placeholder="Fisier.jpg" name="pozaCarte" required><br><br>
               <input type="number"   placeholder="Numarbucati" value='1' min='1' name="cantitateCarte" required><br><br>
               <input type="submit"  >
               
            
        </form>
            
      <br>  <a href="index.jsp"><button type="submit">Acasa</button></a>

</div>
        <div class="doi"><table>
                  <tr>
    <th>Titlu</th>
    <th>Autor</th>
    <th>Nr. bucati</th>
  </tr>
  
            <%
            try{
                DBConnection a= new DBConnection();
                Statement statement=a.conexiune.createStatement();
              
               String comanda="select *from tabbook " ; 
               
                ResultSet rs = statement.executeQuery(comanda);
              
                    
while (rs.next()) {%>

<tr>
    <th><b><%=rs.getString(2) %></b></th>
<th><b><%=rs.getString(3)%></b>></th>
<th><b><%=rs.getString(5)%></b></th>
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
