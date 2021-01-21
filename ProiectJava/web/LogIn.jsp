

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.servlet.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
            String user=request.getParameter("usename");
            String parola =request.getParameter("parola");
            try{
                if(user!=null){

                  DBConnection conn=new DBConnection();
                String Query="select *from login where username=? and password=?";
                PreparedStatement psm=conn.conexiune.prepareStatement(Query);
            
                psm.setString(1, user);
                psm.setString(2, parola);
               
                ResultSet rs= psm.executeQuery();
                if(rs.next()){
                     String id= rs.getString(1);
                    String lvl= rs.getString(4);
                    
                    
                  session.setAttribute("status",lvl);
                  session.setAttribute("ID",id);
                  session.setAttribute("verificare","ok");
                  session.setAttribute("user",user);
                  
                  response.sendRedirect("index.jsp");
                   
                    
                }
                else {
                    out.println("Fail");
                }
                
                
                }
            }
            catch(Exception ex){
                out.println(ex.getMessage());
            
            }





%>