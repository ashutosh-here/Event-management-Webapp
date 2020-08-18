/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mysite;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ashut
 */
public class RegsiterTableDAO {
    
    public String MYid;
    private String name;
  
    private String email;
    private String gender;
    private String regType;
     private Timestamp regDate;
     
   
    private int ticket;
    private String picName;
  private String mobile;

   public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public RegsiterTableDAO(String MYid, String name , String mobile, String email, String gender, String regType, int TicketNo,Timestamp regDate,  String picName) {
        this.MYid = MYid;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.regType = regType;
        this.regDate = regDate;
        this.ticket = TicketNo;
        this.picName = picName;
        this.mobile = mobile;
    }

    public void setRegDate(Timestamp regDate) {
        this.regDate = regDate;
    }

    public Timestamp getRegDate() {
        return regDate;
    }
    
    
    
    
    public RegsiterTableDAO(String MYid, String name, String mobile, String email, String gender, String regType, int TicketNo, String picName) {
        this.MYid = MYid;
        this.name = name;
        this.mobile = mobile;
        this.email = email;
        this.gender = gender;
        this.regType = regType;
        this.ticket = TicketNo;
        this.picName = picName;
    }
    
    
    
     public RegsiterTableDAO() {
      
    }
    
    Connection myconn= ConnectionClass.getMyConnection();
 public boolean isRegistered(String id,String name, String mobile, String email, String gender, String regType, int TicketNo, String picName){
     boolean f=false;
     
     
      try {

            String query = "insert into register(id,name,mobile,email,gender,reg_type,tickets_num,picname) values (?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = myconn.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, mobile);
             pstmt.setString(4, email);
            pstmt.setString(5, gender);
            pstmt.setString(6,regType);
            pstmt.setInt(7, TicketNo);
            pstmt.setString(8, picName);
   

            int rs = pstmt.executeUpdate();

            if (rs==1) {
              f=true;
          }
            

        } catch (SQLIntegrityConstraintViolationException e) {
           
            e.printStackTrace();
        } catch (SQLException ex) {
            
            Logger.getLogger(RegsiterTableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
     
     
     
     
     
     
     return f;
 }
     
     
     
 
 
      public  boolean saveFile(InputStream is, String path) {
        boolean f = false;

        try {
            byte b[] = new byte[is.available()];

            is.read(b);

            FileOutputStream fos = new FileOutputStream(path);

            fos.write(b);

            fos.flush();
            fos.close();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;

    }
 
 
 
 
 
    
     public String getMYid() {
        return MYid;
    }

    public void setMYid(String MYid) {
        this.MYid = MYid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

  

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRegType() {
        return regType;
    }

    public void setRegType(String regType) {
        this.regType = regType;
    }

    public int getTicket() {
        return ticket;
    }

    public void setTicket(int ticket) {
        this.ticket = ticket;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public Connection getMyconn() {
        return myconn;
    }

    public void setMyconn(Connection myconn) {
        this.myconn = myconn;
    }
    

  

     
     
     


   
}

//<%-- 
//    Document   : success
//    Created on : 8 Aug, 2020, 10:59:56 AM
//    Author     : ashut
//--%>