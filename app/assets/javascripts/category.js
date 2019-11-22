$(function(){
  $("#fadetoggle_button").on("click", function() {
      $("#fadetoggle_menu").slideToggle(); 
      $("#fadetoggle_menu").toggleClass("active"); 
  });
});

