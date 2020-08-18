<%-- 
    Document   : Dashboard
    Created on : 6 Aug, 2020, 11:27:18 AM
    Author     : ashut
--%>

<%@page import="java.util.*"%>
<%@page errorPage="/error_page.jsp" %>
<%@page import="com.mysite.AdminTableDAO"%>
<%@page import="com.mysite.RegsiterTableDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
  
    <% 
        
            AdminTableDAO ad= (AdminTableDAO)session.getAttribute("currentAdmin");
//            RegsiterTableDAO user= (RegsiterTableDAO)session.getAttribute("user");
    %>
   
  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
















    
      <script src="AllPages/AdminDashboard/dash.js" type="text/javascript"></script>
    <link href="AllPages/AdminDashboard/dash.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        
        
        
   <div id="nloader" class=".layer1_class" style="background:#6372d6 url('USERpics/loader4.gif') no-repeat center center; position: fixed; width: 100%;height: 100vh;  z-index: 10;
    overflow: visible;">
        <!--<img src="USERpics/loader.gif" style="background:no-repeat center center;">-->
    </div>
    
    <div id="mainC" class=".layer2_class" style="display:none">
    
        <!--all links--> 
  
  
  
  
  
  
  
  
   
  
  
  
  
  
  
   
   

   <!--navBAR-->
   <nav class="navbar navbar-expand-lg navbar-dark py-3" style="background-color: #6372d6">
  <a class="navbar-brand" href="#" style="font-size: 2rem">Event Management @Geeks_grp</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
   
    <form class="form-inline my-2 my-lg-0">
        <p class="bgw vertical-center mt-2 my-2 mx-5" style="text-align: right; font-size: 2rem" ><b>  
                <%=ad.getUserName() %>     
            </b></p> 
        <!--<input class="form-control " type="text" style="margin-left: 67vw">-->
        <a class="btn btn-primary  my-2 my-sm-0 py-2 px-4 mx-4" href="LogoutServlet" style="font-size: 1.5rem" >Logout</a>
      <!--<button class="btn  btn-outline-success my-2 my-sm-0 py-0" type="button">Logout</button>-->
    </form>
  </div>
</nav>
   
   
   
   
   
   
   
   
   
   
   
   
   
  
  
  
  
   
   
   <div> 
   
   
   
   <div id="demo">

       <h1 class="d-flex justify-content-center" style="color: #6372d6;font-weight: bolder"><strong>Registeration Table</b></strong></h1>
       <h2 class="h2" style="color: #6372d6;font-weight:normal;font-size: 2rem">Total number of Registerations:</h2>
  
  <!-- Responsive table starts here -->
  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
  <div class="table-responsive-vertical shadow-z-1">
  <!-- Table starts here -->
  <table id="table" 
         class="table table-hover table-mc-light-blue ">
      <thead>
        <tr>
            <th class="tt">ID</th>
          <th class="tt">Name</th>
          <th class="tt">Contact number</th>
          <th class="tt">Email</th>
          <th class="tt">Gender</th>
          <th class="tt">Registeration Type</th>
          <th class="tt">Tickets</th>
          <th class="tt">Registeration Date</th>
          <th class="tt">ID Card</th>
          
        </tr>
      </thead>
      <tbody>
          
  
          <c:forEach items="${userLists}" var="userL">
          
      <%--  <!-- 1   <td data-title="Tickets"><c:out value="${userL.TicketNo}"/></td>   -->  --%>
      <%--  <!-- 2            <td data-title="Reg-Date"><c:out value="${userL.regDate}"/></td> -->  --%>
          
        <tr>
            <td data-title="ID"><c:out value="${userL.MYid}"/></td>
          <td data-title="Name"><c:out value="${userL.name}"/></td>
          <td data-title="Contact"><c:out value="${userL.mobile}"/></td>
          <td data-title="Email"><c:out value="${userL.email}"/></td>
          <td data-title="Gender"><c:out value="${userL.gender}"/></td>
          <td data-title="Reg-Type"><c:out value="${userL.regType}"/></td>
          <td data-title="Tickets"><c:out value="${userL.ticket}"/></td> 
         <td data-title="Reg-Date"><c:out value="${userL.regDate}"/></td>
     <%--     <!--<td data-title="Pic"><a href=""><c:out value="${userL.picName}"/></a></td>-->  --%>
          <td data-title="ID Card"><img src="USERpics/<c:out value="${userL.picName}"/>" style=" max-width:150px;" >   </td>
          
        </tr>
    
        
        
        
          </c:forEach> 
        
        
        <!--onclick="this.style.display='none'"-->
    
<!--  <img src="img_snowtops.jpg" style="width:30px;cursor:zoom-in"
  onclick="document.getElementById('modal01').style.display='block'">-->

 
<!--  <%--

 onclick="document.getElementById('modal01').style.display='block'"

<%String pic=(String)itr.next();%>


  <div id="modal01" class="w3-modal" style="display: none;">
    <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
    <div class="w3-modal-content w3-animate-zoom">
      <img src="img_snowtops.jpg" style="width:100%">
      <img src="USERpics/<%=pic%>" style=" max-width:550px;" >
     
    </div>
  </div>        --%>    -->






      </tbody>
    </table>
  </div>
  
  <!-- Table Constructor change table classes, you don't need it in your project -->
  <div style="width: 45%; display: inline-block; vertical-align: top">
  <h2>Table Constructor</h2>
  <p>
    <label for="table-bordered">Style: bordered</label>
    <select id="table-bordered" name="table-bordered">
      <option selected value="">No</option>
      <option value="table-bordered">Yes</option>
    </select>
  </p>
  <p>
    <label for="table-striped">Style: striped</label>
    <select id="table-striped" name="table-striped">
      <option selected value="">No</option>
      <option value="table-striped">Yes</option>
    </select>
  </p>
  <p>
    <label for="table-hover">Style: hover</label>
    <select id="table-hover" name="table-hover">
      <option value="">No</option>
      <option selected value="table-hover">Yes</option>
    </select>
  </p>
  <p>
    <label for="table-color">Style: color</label>
    <select id="table-color" name="table-color">
      <option value="">Default</option>
      <option value="table-mc-red">Red</option>
      <option value="table-mc-pink">Pink</option>
      <option value="table-mc-purple">Purple</option>
      <option value="table-mc-deep-purple">Deep Purple</option>
      <option value="table-mc-indigo">Indigo</option>
      <option value="table-mc-blue">Blue</option>
      <option selected value="table-mc-light-blue">Light Blue</option>
      <option value="table-mc-cyan">Cyan</option>
      <option value="table-mc-teal">Teal</option>
      <option value="table-mc-green">Green</option>
      <option value="table-mc-light-green">Light Green</option>
      <option value="table-mc-lime">Lime</option>
      <option value="table-mc-yellow">Yellow</option>
      <option value="table-mc-amber">Amber</option>
      <option value="table-mc-orange">Orange</option>
      <option value="table-mc-deep-orange">Deep Orange</option>
    </select>
  </p>  
  </div>
  
   
   
   </div> 
   
   
   
   
   </div>  
   
   
   



        
        
        
        
        
    </div>  
        
       
    </body>
</html>
