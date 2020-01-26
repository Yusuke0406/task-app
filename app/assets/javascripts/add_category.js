$(function(){
  $("#fadetoggle_button").on("click", function() {
      $("#fadetoggle_menu").slideToggle(); 
      $("#fadetoggle_menu").toggleClass("active"); 
  });
});
$(function(){
  $("input[type=checkbox]").click(function(){
    var deleteConfirm = confirm('削除してよろしいでしょうか？');
    if(deleteConfirm == true){
      var task = $(".input[type=checkbox]").val();
      console.log(task)
      $(this).closest('.work').remove();     
    }else {
      (function(e) {
        e.preventDefault()
      });
    }
  })
})