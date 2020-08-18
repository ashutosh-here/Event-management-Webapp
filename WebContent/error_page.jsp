<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! something went wrong...</title>

        <!--css js files-->
<!--         <link rel="stylesheet" href="css/mystyle.css"/>
    <link rel="stylesheet" href="Bootstrap4/CSS.css"/>
       <script src="jQuery/js.js" ></script>-->
<!--    <script src="Bootstrap4/BootstrapJS.js" ></script>
    <script src="Bootstrap4/Popper.js" ></script>-->
<!--    <script src="https://kit.fontawesome.com/e057dff8c2.js" crossorigin="anonymous"></script>
  
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    -->
        <style>
            
            .hh{
                color:#020669;
                font-size:60px;
                letter-spacing: 2px;
                margin: 80px;
                top: 10%;
            }

            *{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
       body{
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: 'Quicksand', sans-serif;
	font-size: 42px;
	 background: url(https://kinsta.com/wp-content/uploads/2018/09/wordpress-http-error.png) no-repeat center center;
         background-attachment: fixed;
background-size: cover;
}
span{
	margin: 0 15px;
	line-height: .7;
	text-shadow: 0 0 2px rgba(0, 0, 0, .45);
	animation: span 3s ease-in infinite alternate;
}
.main{
	display: flex;
	justify-content: center;
	align-items: flex-start;
        color:#020669;
}
.letter{
	display: inline-flex;
	height: 30px;
	width: 27px;
	/* border: 2.5px solid #FF1EAD; */
	border: 2.35px solid red;
	border-radius: 14px;
	box-shadow:0 0 2px rgba(0, 0, 0, .75),
		inset 0 0 2px rgba(0, 0, 0, .45);

	animation: letter 1s ease-in-out infinite alternate;
}
@keyframes span {
	0%,30%{ margin: 0 15px; }
	70%,100%{ margin: 0 5px; }
}
@keyframes letter {
	0%,30%{ width: 27px; }
	70%,100%{ width: 30vw; }
}
            
    </style>
        
        
    </head>
    <body>
        <div class="container text-center vertical-center mt-300">
          
            <!--<img src="https://kinsta.com/wp-content/uploads/2018/09/wordpress-http-error.png" class="img-fluid" >-->
            <h1 class="hh">Sorry ! Something went...</h1>
            <div class="main">
                <span><b>W</b></span>
                <span><b>R</b></span>
                <span class="letter"></span>
                <span><b>N</b></span>
                <span><b>G</b></span>
            </div>
            
         
        </div>


    </body>
</html>
