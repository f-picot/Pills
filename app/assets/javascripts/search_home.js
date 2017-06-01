$(document).ready(function(){
  $('.category-button').click(function(){
    var category = $(this).data('category');
    console.log(category);
    $('#pill_name').val(category);
    $('#home_button').trigger('click');
  });
});
