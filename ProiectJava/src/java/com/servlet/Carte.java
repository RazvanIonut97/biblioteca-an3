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
public class Carte {
   private
   String nume;
   String autor;
   String calePoza;
     int cantitate;
    public 
        Carte(String num,String auto,String cale,int canti){
            nume=num;
            autor=auto;
            calePoza=cale;
            cantitate=canti;
            adaugaCarte(num,auto,cale,canti);
           
        
        }

    private void adaugaCarte(String nume, String autor, String calePoza, int cantitate) {
             try{
  
                DBConnection conn=new DBConnection();
                String Query="insert into tabbook(titlu,autor,poza,cantitate) values('"+nume+"','"+autor+"','poze/"+calePoza+"',"+cantitate+")";
           
                Statement stat=conn.conexiune.createStatement();
               stat.executeUpdate(Query);
               
               
     
     }
     catch(Exception ex){
        System.out.println(ex);
     
     
     }
    }
    
    
}
