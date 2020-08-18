<%-- 
    Document   : register
    Created on : 8 Aug, 2020, 4:24:45 PM
    Author     : ashut
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="/error_page.jsp" %>
<!DOCTYPE html>  
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@700&display=swap" rel="stylesheet">

       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@500&display=swap" rel="stylesheet">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        
        

        
        <!--<script src="https://kit.fontawesome.com/e057dff8c2.js" crossorigin="anonymous"></script>-->
        <script src="register.js" type="text/javascript"></script>
        <link href="register.css" rel="stylesheet" type="text/css"/>

        <!--sweet alert-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
        
        <title>Registration form</title>
    </head>
    <body>

        <!-- FORM -->
        <h3><center>Fill the details</center></h3>
      
        
        <!--<form  id="MAINconfirm-form" action="RegisterServlet"  method="post">-->
        
        
        
        <!--onsubmit="return pathToRegisterServlet();"-->
        <div class="center">
            
            
            
            <!--<form class="was-validated">-->
                
                
                
                <div>
                    <br>
                    <p>Full Name</p>
                    <input class="box inpt"  id="fname" type="text" name="fname" placeholder="Your Name" required>
                    <br>
                    <p>Mobile</p>
                    <input class="box inpt"  id="no" type="text" pattern="^[6-9]\d{9}$" name="Mobile num" aria-describedby="phone" placeholder="Your Phone Number" required>
                    <br>
                    <small id="phone inpt" class="form-text text-muted">Only 10 digit Indian numbers.</small>
                    <br>
                    <p>E-mail</p>
                    <input class="box inpt" id="email" type="email" name="email" aria-describedby="emailHelp" placeholder="Your Email Id" required>
                   <br>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    <br>


                    <p>Gender</p>
                    <center>
                        <div class="rdbutton inpt">
                            <label for="regtype1">
                                <input id="regtype1" type="radio" name="gender" value="Male" > Male&nbsp;&nbsp;&nbsp;</label>
                            <label for="regtype2">
                                <input id="regtype2" type="radio" name="gender" value="Female"> Female&nbsp;&nbsp;&nbsp;</label>
                            <label for="regtype3">
                                <input id="regtype3" type="radio" name="gender" value="Others"> Others&nbsp;&nbsp;&nbsp;</label>
                        </div>
                    </center>


                    <!--style="display:none"      d-flex justify-content-center-->

                    <div class="d-flex justify-content-center align-items-center" id="loader" style="display:none">
                        <span class="fas fa-sync-alt fa-6x fa-spin " style="color:#3d5afe"></span>
                        <br>
                        <h2 style="color:#3d5afe"><strong>Please wait...</strong></h2>
                    </div>


                   
                    
                    
                    
                    
                    
                    <br>
                    <p>Registration type</p>
                    <div class="inputGroup inpt">
                        <input class="inpt" id="radio1" name="people" type="radio"  value="Self"  checked/>
                        <label for="radio1">Self</label>
                    </div>
                    <div class="inputGroup inpt">
                        <input class="inpt" id="radio2" name="people" type="radio" value="Group"/>
                        <label for="radio2">Group</label>
                    </div>
                    <div class="inputGroup inpt">
                        <input class="inpt" id="radio3" name="people" type="radio" value="Corporation" />
                        <label for="radio3">Corporation</label>
                    </div>
                    <div class="inputGroup inpt">
                        <input class="inpt" id="radio4" name="people" type="radio" value="Others"/>
                        <label for="radio4">Others</label>
                    </div>
                    <br>
                </div>

                <p>Number of Tickets</p> 
                <input class="box inpt" id="tickts" type="number" name="tickets" value="1" required min=1 oninput="validity.valid||(value='');"  ><br>
                <br>
                <!--<button class="subbutton" type="submit">Submit</button> -->
                <div class="bbbb">
                <button type="button" class="subbutton inpt text-center" id ="btn" onclick="my() ; pathToRegisterServlet();"  

                          data-toggle="modal"  data-target="#myModal">Submit</button>

                </div>

           
            
            <!--</form>-->
            
            
        </div>





        <!-- MODAL SCREEN 
           <img class="idimage" id="thumbnil" style="width:80%; margin-top:10px;" src="" alt="image" />
                                        
        <!--<img id="thumbnil" style="width:80%; margin-top:10px;"  src="" alt="image"/>  -->


        <div class="container">

            <div id="myModal" class="modal fade" data-backdrop="static" role="dialog">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" id="cross" data-dismiss="modal">&times;</button>
                            <h3 class="modal-title"> Preview</h3>
                        </div>
                                           <!--onsubmit="return pathToRegisterServlet();"   enctype="multipart/form-data"   -->
 <form id="confirm-form" action="RegisterServlet"  method="post" onsubmit="return pathToRegisterServlet();  validateD()"   enctype="multipart/form-data">
                                
                                
                             <p>Upload ID Card (Formats:png, jpeg, jpg)</p>

                    <div class="upload-btn-wrapper">
                        <button class="btn">Upload a file</button>
                        <!-- <input type="file" name="myfile"  required />  -->
                        <input   id="IMG" type="file" name="img" accept="image/*"  onchange="cloadFile(event)" required />


                    </div>
                            
                               <div class="modal-body">
                            <center>  <img class="idimage" id="thumbnil" style="width:60%;height:40%; margin-top:10px;" src="" alt="image preview" /></center>

                            <!--<img id="thumbnil" style="width:80%; margin-top:10px;"  src="" alt="image"/>  -->
                          
                                  
                            <table>

              
                    
                                <tr>
                                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                </tr>
                                <tr>
                                    <td><b>Full Name:</b></td>
                                    <td></td>
                                    <td class="fullname"><span id="fn"></span>
                                    
                                     <input name="hfn" id="hfn" type="hidden">
                                    
                                   </td>
                                </tr>
                                <tr>
                                    <td><b>Mobile:</b></td>
                                    <td></td>
                                    <td class="phone"><span id="mb"></span>
                                       <input name="hmb" id="hmb" type="hidden">
                                       
                                    </td>
                                </tr>
                                 <tr>
                                    <td><b>Email:</b></td>
                                    <td></td>
                                    <td class="mail"><span id="ml"></span>
                                     <input name="hml" id="hml" type="hidden">
                                    
                                    </td>
                                </tr>


                                <tr>
                                    <td><b>Gender</b></td>
                                    <td></td>
                                    <td class="gender"><span id="gn"></span>
                                     <input name="hg" id="hg" type="hidden">
                                    
                                    </td>
                                </tr>

                                <tr>
                                    <td><b>Registration Type:</b></td>
                                    <td></td>
                                    <td class="rtype"><span id="rt"></span>
                                     <input name="hrt" id="hrt" type="hidden">
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Tickets:</b></td>
                                    <td></td>
                                    <td class="tickets"><span id="tk"></span>
                                     <input name="htk" id="htk" type="hidden">
                                    
                                    </td>
                                </tr>
                                
                            </table>

                        </div>
                        <div class="modal-footer">
                            <button id="mycon-btn" type="submit" class="btn-btn-default">Confirm 
                            </button>
                            <button type="button" class="btn-btn-edit" data-dismiss="modal"> Edit
                            </button>	
                           
                        </div>
                              
                              
                              
                        </form>              
                            
                        
                        
                       
                    </div>
                </div>
            </div>
        </div>

</form>
        

        <script>
          
     function pathToRegisterServlet(){
             //   document.getElementById('MAINconfirm-form').action=location.origin+"/MYSITE/RegisterServlet";
             
                document.getElementById('confirm-form').action=location.origin+"/MYSITE/RegisterServlet"
            }
    function validateD(){
         var regex=new RegExp("^[6-9]\d{9}$");
             var nm=document.getElementById('hmb').value;
             console.log(nm);
             if(regex.test(nm)){
                 alert("true");
//                 return true;
             }
       
        
    }
   // using AJAX for form submission
  /*  $(document).ready(function (e) {
                //
                $("#confirm-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("clicked on submit..")
                    let form = new FormData(this);

                    //now requesting to server
                    $.ajax({
                        url: location.origin+"/MYSITE/RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                                swal("Error!!", "Something went wrong try again...", "error");
                            }
                            window.location = location.origin+"/MYSITE/RegisterServlet";
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            //error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    })
                })
            })   */
       
        </script>



    </body>
</html>

<!--<%-- 
    Document   : success
    Created on : 8 Aug, 2020, 10:59:56 AM
    Author     : ashut
--%>-->