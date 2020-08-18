<%-- 
    Document   : Login
    Created on : 6 Aug, 2020, 11:00:54 AM
    Author     : ashut
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="/error_page.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin-Login</title>
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Piedra&display=swap" rel="stylesheet">
 
<!--<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>-->


 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
 <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
 
 <script src="login.js" type="text/javascript"></script>
<link href="login.css" rel="stylesheet" type="text/css"/>

<script src="AllPages/LoginAsAdmin/login.js" type="text/javascript"></script>
<link href="AllPages/LoginAsAdmin/login.css" rel="stylesheet" type="text/css"/>

<!--<base href="${host}/">-->
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
</head>
<body>



    
    
    
   
    
    
    
    
    
    
    


<div class="header">
    <div class="inner-header flex">
   
       <!-- <h1>Simple CSS Waves</h1>-->
    </div>

    <!--Waves Container-->
    <div>
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
            <defs>
                <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
            </defs>
            <g class="parallax">
                <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
                <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
                <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
                <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
            </g>
        </svg>
    </div>
    <!--Waves end-->

</div>






<!-- partial:index.partial.html -->
<div class="panda">
  <div class="ear"></div>
  <div class="face">
    <div class="eye-shade"></div>
    <div class="eye-white">
      <div class="eye-ball"></div>
    </div>
    <div class="eye-shade rgt"></div>
    <div class="eye-white rgt">
      <div class="eye-ball"></div>
    </div>
    <div class="nose"></div>
    <div class="mouth"></div>
  </div>
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>

<form action="${pageContext.request.contextPath}/AdminServlet" method="GET">
  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1>Admin Login</h1>
  <div class="form-group">
    <input name="name" required="required" class="form-control"/>
    <label class="form-label">Username    </label>
  </div>
  <div class="form-group">
      <input  name="password" id="password" type="password" required="required" class="form-control"/>
    <label class="form-label">Password</label>
    <p class="alert">Invalid Credentials..!!</p>
    <button class="btn" type="submit"   >Login </button>
  </div>
</form>
<!-- partial -->
 
	


</body>
</html>