$(document).ready(function(){
  $(".category-content").fadeOut()
  $(".category-title").click(function(){
    var category_content = $("#category-content" + $(this).attr('id').slice(-1))
    if (category_content.is(":visible")){
      category_content.fadeOut()
    }
    else
    {
      $(".category-content").fadeOut()
      category_content.fadeIn('slow')
    }
  })
});