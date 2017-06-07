$(document).ready(function(){
  $('.category-button').click(function(){
    var category = $(this).data('category');
    console.log(category);
    $('#pill_name').val(category);
    $('#home_button').trigger('click');
  });
  if ($('.pills-index').length > 0) {
    $('#pill_name').on('keyup', function(e) {
      $('#search_pill').submit();
    });
  }
});
