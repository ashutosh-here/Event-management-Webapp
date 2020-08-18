

$(window).on('load',function (){
   // setTimeout( $('#mainC').show(),3000);   
    // $('#mainC').show();
    setTimeout(function (){
       $('#nloader').hide();
         $('#mainC').show();
    },800)
    // $('#mainC').show();
    
//    setTimeout(function (){
//      $('#mainC').show();
//        
//    },100)
  //  $('#mainC').show();
   //  $('#nloader').hide();
    
});




// Menu-toggle button

$(document).ready(function() {
    
//  $(window).resize(function (){
//      
// if($(this).width()<580){
//     
//     $('.content').hide();
// } 
//   else{
//            $('.content').show();
//        }    
//     
//     
//     
//      
//  })  ;
    
    
    
    
//   $('#mainC').show();
//   $('#nloader').hide();
    
  $(".menu-icon").on("click", function() {
    $("nav ul").toggleClass("showing");
  });

//turn off the navBar when clicked on navbar elements
//toggle navBar icon and hide overImage content
if ($(window).width()<= 750){
   $(".menu li a").on("click", function() {
    $("nav ul").removeClass("showing");
		  $('.menu-icon').find('i').toggleClass('fa-align-justify fa-times');
			//	$("#overImg,.register").toggle(1000);
                        
                        $('#contact').addClass("d-flex justify-content-center");
			
  });
	 }
	 
	 
	 
	  //toggle navBar icon and hide overImage content
 /* $('.menu-icon').click(function(){
	ide();
      $('.menu-icon').find('i').toggleClass('fa-align-justify fa-times');
   
		$("#overImg,.register").toggle(1000);
	}); */

  /* function ide() {
   $('.menu-icon').find('i').toggleClass('fa-align-justify fa-times');
   
		$("#overImg,.register").toggle(1000);
     }  */
	 
	 
	 
	 
	 
	 
  // Scrolling Effect
  $(window).on("scroll", function() {
    if(($(window).scrollTop())>25){
      $('nav').addClass('black');
      $('.logo').addClass('white');
      $('.links').addClass('white');
      $('.hlinks').addClass('white');
//      $('.dropdown-content>a').addClass('white2');
    } else {
      $('nav').removeClass('black');
      $('.logo').removeClass('white');
      $('.links').removeClass('white');
      $('.hlinks').removeClass('white');
//      $('.dropdown-content>a').removeClass('white2');
    }
  })
  
  
	
  //toggle navBar icon and hide overImage content
  $('.menu-icon').click(function(){
	//ide();
      $('.menu-icon').find('i').toggleClass('fa-align-justify fa-times');
   
	//	$("#overImg,.register").toggle(1000);
	});
	

  /* function ide() {
   $('.menu-icon').find('i').toggleClass('fa-align-justify fa-times');
   
		$("#overImg,.register").toggle(1000);
     }  */
	


new TypeIt('#overImg', {
        strings:[ "Participate in the most fabulous & exciting event in the history!"," D-Day is waiting for you..."],speed:120,cursor:false
      }).go();






/*
// var ht=(($(window).height())/2);
 
  $(window).scroll(function() {
    if ($(document).scrollTop() > 200) {
     	$("#overImg,.register").hide(1000);
    } 
		if ($(document).scrollTop() < 200) {
     	$("#overImg,.register").show(1000);
    } 
		
  });
  */


/* $("button").click(function(){   */
    $("nav").css("z-index", "100");
  /* });  */












});


