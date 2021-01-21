/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.sql.Statement;

/**
 *
 * @author Razvan
 */
public class User {
    private
            String username,parola;
            int statut;
    public 
        User(String user,String password,int level){
            username=user;
            parola=password;
            statut=level;
            addUser(username,parola,statut);
    }

    private void addUser(String username, String parola, int statut) {
                    try{
  
                DBConnection conn=new DBConnection();
                String Query="insert into login(username,password,status) values('"+username+"','"+parola+"',"+statut+")";
           
                Statement stat=conn.conexiune.createStatement();
               stat.executeUpdate(Query);
               
               
     
     }
     catch(Exception ex){
        System.out.println(ex);
     
     
     }
    }
    
}
