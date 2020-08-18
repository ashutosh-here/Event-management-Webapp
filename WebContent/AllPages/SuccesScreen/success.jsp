<%-- 
    Document   : success
    Created on : 8 Aug, 2020, 10:59:56 AM
    Author     : ashut
--%>

<%@page import="com.mysite.RegsiterTableDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="/error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boom..!</title>
            
<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>-->
  
  
  <script src="success.js" type="text/javascript"></script>
  <link href="success.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        <%
           HttpSession s=request.getSession();
        RegsiterTableDAO user= (RegsiterTableDAO)  s.getAttribute("user");
        
        %>
        <div class="mm"> 
        
        <form class="box">
              <h1 class="animated  d-flex justify-content-center ">BOOM!!!</h1>
              <hr><h2 class= "word">Registered Successfully!!</h2><br>
              <h3 style = "color: white">Thanks For Registering </h3><br>
              <label for="REGISTRATION" style="color:white">REGISTERATION ID</label>
              <br>
              <br>
              <label style="color:#2727ab"><b><%=user.getMYid()%></b></label>
              <!--<input class="in" type="text" name="k" placeholder="Registered Id" readonly="true" value="">-->
           
        </form>
        
   </div>
    </body>
</html>
