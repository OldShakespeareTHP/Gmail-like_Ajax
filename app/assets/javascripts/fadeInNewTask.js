$(document).ready(function(){
  $("body").on("click",$(".task-content span:first"), function(){
    var task = 
    console.log(task.text())
    task.fadeIn()
    console.log($(this))
    $(this).hide()
    $(".task-content:first").load(function(){
      console.log("hello")
  });
  console.log($(".task-content:first").text())
});
