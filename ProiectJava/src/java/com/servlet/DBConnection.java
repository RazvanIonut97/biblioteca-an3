/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
    private
        String user="razvan";
        String pass="admin1234";
        String URL="jdbc:derby://localhost:1527/library";
        public 
                Connection conexiune;
         
   public DBConnection() throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
        try{
         conexiune=DriverManager.getConnection(URL, user, pass);
        }
        catch(SQLException ex){
        System.out.println(ex);}
    }
    
    
    
}
