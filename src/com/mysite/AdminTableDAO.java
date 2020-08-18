/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mysite;

import java.sql.*;

/**
 *
 * @author ashut
 */
public class AdminTableDAO {
    
    
    private String userName;
    private String password;

   

    
    
    
    
     Connection myconn= ConnectionClass.getMyConnection();
     
     public boolean isAdmin( String Name,String pswrd){
         boolean f=false;
         
          try {

            String query = "select * from admin where username =? and password=?";
            PreparedStatement pstmt = myconn.prepareStatement(query);
            pstmt.setString(1, Name);
            pstmt.setString(2, pswrd);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                
                f=true;
                
            }
            

        } catch (Exception e) {
            e.printStackTrace();
        }
          return f;
         
       }
     
    
    public AdminTableDAO(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }
    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
    
}
