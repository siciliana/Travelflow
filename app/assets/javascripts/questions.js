# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready(function(){
  console.log("are we even on the freaking page?")

 $('#new_user_form').hide(); 
  $('#login').click(function() {
   $('#new_user_form').show();

  });
 
});