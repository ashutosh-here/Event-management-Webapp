// fun to render form inputs on modal
function my(){
 
   
 //store form values on variabale
 var x=document.getElementById('fname').value;
 
  var y=document.getElementById('no').value;//store form values on variabale
	
	 var z=document.getElementById('email').value;//store form values on variabale
	 
    var v=document.getElementById('tickts').value;//store form values on variabale
		 
		 
	// for radio buttons
	var rd=$("input[name='people']:checked").val();

  var gd=$("input[name='gender']:checked").val();

 // to render form values on respective modal screens 
	$("#fn").html(x);
	
	$("#mb").html(y);
	
	
	$("#ml").html(z);
	
	
   $("#rt").html(rd);

  $("#tk").html(v);

	 $("#gn").html(gd);
         
    //set the form values to the hidden fields for sending to servlet     
  
    document.getElementById('hfn').value=x;       
         
    document.getElementById('hmb').value=y;       
    document.getElementById('hml').value=z;       
    document.getElementById('hrt').value=rd;       
    document.getElementById('htk').value=v;       
    document.getElementById('hg').value=gd;       
        
 	
 }
 

 // fun to show image
	
    var cloadFile = function (event) {
    var cimage = document.getElementById('thumbnil');

    cimage.src = URL.createObjectURL(event.target.files[0]);
    
  //  var mainFileimage=document.getElementById("mainFormIMG").files[0];
   // var mainFileimage=$("#mainFormIMG").prop('files')[0];
   
//          var data;
//        
//           fileReader=new FileReader();
//        
//        
////        fileReader.onload()=function(){
////            var data=fileReader.result;
////        };
//        
//        fileReader.addEventListener("load",function (){
//             data=fileReader.result;
//        },false);
//        
//       fileReader.readAsDataURL($("#mainFormIMG").prop('files')[0]); 
//        // var data=fileReader.result;
//        
//        
//        
//        //console.log(mainFileimage);
//        console.log(data);
};
        
        
 // using AJAX for form submission
   /* $(document).ready(function (e) {
                //
                $("#confirm-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("clicked on submit..")
                    let form = new FormData(this);
                     
                    //now requesting to server
                    $.ajax({
                        url:location.origin+"/MYSITE/RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
//                            if (data.trim() == 'done')
//                            {
//                                swal("Good job!", "saved successfully", "success");
//                            } else
//                            {
//                                swal("Error!!", "Something went wrong try again...", "error");
//                            }
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
            })     */