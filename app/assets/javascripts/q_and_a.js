$(document).on('page:change', function() {
  bindQuestionEvents();

});

function bindQuestionEvents() {
  console.log('bind')
  $('body').on('click', 'a.vote', vote)
};

function vote(event){
  debugger
  console.log('vote')
  event.preventDefault();
  var button = $(this);
  var url = $(this).attr('href');
  $.ajax({
    url: url,
    type: 'get'
  }).done(function(data) {
    console.log(data)
    button.siblings('span').text(data);
  }).fail(function() {
      console.log('error');
  });

    // $(button).parent().find('.vote').each(function(_, elem) {
    //   $(elem).replaceWith($(elem).html());
    // });
};