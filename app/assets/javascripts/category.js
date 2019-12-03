
// $('#fadetoggle_menu').on('submit', function(e){
//   e.preventDefault();
//   console.log("ok");
//   // var formdate = new FormData(this);
//   // var utl
// })

$(function(){
  function buildhtml(task){
    var deadline = task.deadline? `${task.deadline}` :"";
    var html =
    `<div class="work">
    <div class="work__box">
    <input name="task[task_name]" type="hidden" value="0"><input class="check1" type="checkbox" value="1" name="task[task_name]" id="task_task_name">
    ${task.task_name}
    <label for="check1"><a rel="nofollow" data-method="delete" href="/categories/38/tasks/48"></a></label>
    </div>
    <div class="work__btn">
    ${deadline}
    </div>
    </div>`
      return html;
  }
// $(".new_task").submit(function(e){
//   e.preventDefault()
//   var formData = new FormData(this);
//   var url = $(this).attr('action');
//   $.ajax({
//     url: url,
//     type: 'POST', 
//     data: formData,  
//     dataType: 'json',
//     processData: false,
//     contentType: false
//   })
//   .done(function(data){
//     var html = buildhtml(data)
//     $('.works').append(html);
//     $('#new_task')[0].reset();
//     $('.form__submit').attr('disabled',false)
//     $('.works').animate({scrollTop: $('.works')[0].scrollHeight}, 'fast');   
//   })
//   .fail(function(){
//     alert("エラー");
//   })
//   return false;
// })
// })