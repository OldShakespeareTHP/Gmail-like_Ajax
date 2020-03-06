$(document).ready(function(){
  $("tr > td").click(function(){
    console.log($(this).parent().attr('id').slice(-3))
    const Url="http://localhost:3000/mails/" + $(this).parent().attr('id').slice(-3)
    $.ajax({
      url: Url,
      type: "GET",
      success: function(){
        console.log("success")
      },
      error:function(error){
        console.log('Error ${error}')
      }
    })
  })
})