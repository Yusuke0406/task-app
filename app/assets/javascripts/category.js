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
$(function(){
  $("input[type=checkbox]").click(function(){
    // var tag = $('input[type=checkbox]').prop('checked');
    var deleteConfirm = confirm('削除してよろしいでしょうか？');

    if(deleteConfirm == true){
      var task = $(".input[type=checkbox]").val();
      console.log(task)
      $(this).closest('.work').remove();
      // $.ajax({
      //   url: '/user/' + userID,
      //   type: 'POST',
      //   data: {'id': userID,
      //          '_method': 'DELETE'} // DELETE リクエストだよ！と教えてあげる。
      // })
     
    }else {
      (function(e) {
        e.preventDefault()
      });
    }
  })
})