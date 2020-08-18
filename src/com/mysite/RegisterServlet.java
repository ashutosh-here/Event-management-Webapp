/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mysite;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author ashut
 */
@MultipartConfig
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
   try {         
            
             String a = request.getParameter("hfn");
          
             
          // int b = Integer.parseInt(request.getParameter("hmb"));
         
//          int b = Integer.valueOf(request.getParameter("hmb"));
            
           
              String b = request.getParameter("hmb");
             String c = request.getParameter("hml");
             String d = request.getParameter("hg");
             String e = request.getParameter("hrt");
                int ftk = Integer.parseInt(request.getParameter("htk"));
            
           Part part = request.getPart("img");
           String filename=part.getSubmittedFileName();
           
           
            // unique id generator
         String ts = (String.valueOf(System.currentTimeMillis())).substring(10);
         int al=a.length();
         int cl=c.length();
         String key="EVNT"+a.substring(0,(al/3))+ts+c.substring(0, (cl/3));
    
         
         
         
         
          
         
         
         
     
         int count=0;
            RegsiterTableDAO user=new RegsiterTableDAO(key, a, b, c,d, e, ftk, filename);
          //  RegsiterTableDAO user=new RegsiterTableDAO(key, a, 4,  c,d, e,5,  filename);
        
           boolean check=   user.isRegistered(key, a, b, c,d, e, ftk, filename);
            if (check) {
                count++;
                
                   if (part != null) {

                String path = request.getSession().getServletContext().getRealPath("/") + "USERpics" + File.separator + user.getPicName();

                if (user.saveFile(part.getInputStream(), path)) {
                       count++;
                    out.println("Profile updated...");
                } else {
                    response.sendRedirect("/MYSITE/error_page.jsp");
                    out.println("not updated..");

                }

                   }
                   else{
                       response.sendRedirect("/MYSITE/error_page.jsp");
                   }
            
       
                 
           
            }else {
                response.sendRedirect("/MYSITE/error_page.jsp");
                out.println("<h1>nooooo</h1>");
            }
  
         
              
         
            
         
            
           
            if (count!=0) {
               
                HttpSession s=request.getSession();
                s.setAttribute("user", user);
                 out.println("<h1> regsitered..</h1>");
                   response.sendRedirect("AllPages/SuccesScreen/success.jsp");
                  // response.sendRedirect("AllPages/SuccesScreen/success.jsp");
            } 
           
            else {
               // response.sendRedirect("/MYSITE/error_page.jsp");
                
                out.println("<h1> not regsiters..</h1>");
            
            }
            
           
        
            
            
              
           //  printing values for testing  
           Enumeration<String> names=request.getParameterNames();
            
            while(names.hasMoreElements()){
                String nn=names.nextElement();
                out.println(nn);
            }
              out.println("<h1>name==" + a +"</h1>");
           // out.println("<h1>mb==" + b +"</h1>");
            out.println("<h1>ml==" + c +"</h1>");
            out.println("<h1>gender==" + d +"</h1>");
            out.println("<h1>rt==" + e +"</h1>");
         //   out.println("<h1>tikets==" + ftk +"</h1>");
            out.println("<h1>file==" + filename +"</h1>");
            
               out.println("<img src=\"USERpics/"+user.getPicName()+"\"style=\"max-width: 550px;\" >");
            
            
            
    } catch (IOException | NumberFormatException | ServletException exvt) {
           response.sendRedirect("/MYSITE/error_page.jsp");
            }
      
            
            

            
      
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}



//    Document   : success
//    Created on : 8 Aug, 2020, 10:59:56 AM
//    Author     : ashut
