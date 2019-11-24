$(function(){
  $("#fadetoggle_button").on("click", function() {
      $("#fadetoggle_menu").slideToggle(); 
      $("#fadetoggle_menu").toggleClass("active"); 
  });
});
// $('#fadetoggle_menu').on('submit', function(e){
//   e.preventDefault();
//   console.log("ok");
//   // var formdate = new FormData(this);
//   // var utl
// })
