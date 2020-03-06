$(document).ready(function(){
  var dropdown_menu = $(".dropdown-menu")
  dropdown_menu.hide()
  dropdown_menu.css('left', '-=100px') 
  $("img.rounded-circle").click(function(){
    dropdown_menu.toggle('slow')
  })
  var my_modal = $("#myModal")
  var log_in = $("#log_in_link")
  var sign_in = $("#sign_in_link")
  // my_modal.hide()
  log_in.click(function(e){
    e.preventDefault( )
    my_modal.modal('show')
  })
  
});
