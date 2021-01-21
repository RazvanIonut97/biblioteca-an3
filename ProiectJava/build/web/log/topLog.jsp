
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.servlet.DBConnection"%>
<div class="top">
<div class="logo">
    <a href="index.jsp"><img src="poze/logo.png"></a>
</div>
<div class="baraCautare">
<form novalidate action="" method="GET" id="eugen">
            <input type="search"   placeholder="Titlu,autor" name="cauta" required>
            
        
             <button type="submit">Cauta</button>
        </form>
</div>
<div class="user">
    <div class="hello"> 
        <p>Buna,<%=session.getAttribute("user") %></p>
     
        <a href="LogOut.jsp">Log Out</a>
    </div>
        <div class="cos"> 
            <form method="post" action="sterge.jsp">
                
            
            <% 
            
           
            try{
                String idUser1=session.getAttribute("ID").toString();
                int idUser=Integer.parseInt(idUser1);
                DBConnection cart=new DBConnection();
                Statement statement=cart.conexiune.createStatement();
                
                String comanda="select *from tabtemp where iduser="+idUser+" " ;
                ResultSet rs = statement.executeQuery(comanda);
                ResultSet carte;
                String comanda1;
                int ceva;
                while (rs.next()) {
                    ceva=rs.getInt(3);
                    Statement statement1=cart.conexiune.createStatement();
                    comanda1="select *from tabbook where id="+ceva+" " ;
                    carte = statement1.executeQuery(comanda1);
                    while(carte.next()){
                  
                   
            %>
            <input type="hidden" name="sterge1" value="<%=rs.getInt(1)%>">
           
            <b><%=carte.getString(2) %> -- <%=rs.getInt(4) %> <button>x</button></b><br>
                <%
                
                }}
            
            }
            catch(Exception ex){
            out.println(ex);
            }
            
            
            %>
           
            <a href="#">Trimite cererea</a>
            </form>
    </div>
    
</div>

</div>