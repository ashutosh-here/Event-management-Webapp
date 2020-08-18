document.getElementsByTagName("h1")[0].style.fontSize = "6vw"; // return an HTML.Collection of elements with given tag

var words = ['REGISTERED SUCCESSFULLY!!'],
    part,
    i = 0,
    offset = 0,
    len = words.length,
    forwards = true,
    skip_count = 0,
    skip_delay = 65,
    speed = 110; //The speed duration of the effect in milliseconds
    
var wordflick = function () {
    setInterval(function () { //setinterval() Executes a function repeatedly, after waiting a specified number of milliseconds.
   	  if (forwards) {
      	 if (offset >= words[i].length) {
       	 ++skip_count;
         	if (skip_count == skip_delay) {
          	forwards = false;
            skip_count = 0;
        	} //innermost if closing
     	 }
   	 }
   else {
      if (offset == 0) {
        	forwards = true;
       	  i++;
       	  offset = 0;
        	if (i >= len) {
          	i = 0;
       	  }
      }
   }
    
    part = words[i].substr(0, offset);
    if (skip_count == 0) {
      if (forwards) {
        offset++;
      }
      else {
        offset--;
      }
    }
    $('.word').text(part);
  },speed);
};

// A $( document ).ready() block.
$(document).ready(function () {
  wordflick();
});
     
     
