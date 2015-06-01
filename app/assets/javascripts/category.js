$(document).on('page:change', function() {
  $('.tile').hover(function(){
      $(this).addClass('flip');
  },function(){
      $(this).removeClass('flip');
  });
});
