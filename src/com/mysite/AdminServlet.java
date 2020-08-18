/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mysite;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ashut
 */
public class AdminServlet extends HttpServlet {

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
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AdminServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
          
            
                     //          login 
//            fetch username and password from request
            String userName = request.getParameter("name");
            String userPassword = request.getParameter("password");
            
            
//             src=\"AllPages/LoginAsAdmin/login.js\" type=\"text/javascript\"
            
           // out.println("<h1>Servlet AdminServlet at " + userName+"\n"+userPassword+"</h1>");
            
             AdminTableDAO ad=new AdminTableDAO(userName,userPassword);
           boolean f= ad.isAdmin(userName, userPassword);
           
          if(f){
               HttpSession s = request.getSession();
                s.setAttribute("currentAdmin", ad); 
              
//              response.sendRedirect("AllPages/AdminDashboard/Dashboard.jsp");

              response.sendRedirect("/MYSITE/DataServlet");
          }
          else{
                //to show the invalid credentials effect
                
                 out.println("<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>");

                out.println("<script type=\"text/javascript\">");
                
                out.println("$(document).ready(function (){");
                out.println("$('form').addClass('wrong-entry');");
                out.println("setTimeout(function(){");
                out.println("$('form').removeClass('wrong-entry'); },3000 );});");
               
                 out.println("</script>");
                
                
                
                RequestDispatcher rd=request.getRequestDispatcher("AllPages/LoginAsAdmin/Login.jsp");
                rd.include(request, response);
                
          }
              
            
                
             
        
             
             
             
             
             
             
             
             
             
             
             
             
             
             
//             if((userName.equalsIgnoreCase("Admin"))&&(userPassword.equals("admin"))){
//                
//                  out.print("yesss");
//                  
//                  
//                
//                response.sendRedirect("AllPages/AdminDashboard/Dashboard.jsp");
//                
//            } else {
//                //......
//              // login success
//              
//                out.print("nnnn");
////                HttpSession s = request.getSession();
////                s.setAttribute("currentUser", u);
////                response.sendRedirect("profile.jsp");
//
//            }
             
             
             
//             out.println("</body>");
//            out.println("</html>");
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
