$(document).on('page:change', function() {
  bindQuestionEvents();
});

function bindQuestionEvents() {
  $('body').on('click', 'a.vote', vote)
};

function vote(event){
  event.preventDefault();

  var button = $(this);
  var url = $(this).attr('href');

  $.ajax({
    url: url,
    type: 'get'
  }).done(function(data) {
    button.siblings('span').text(data);
  }).fail(function() {
    console.log('error');
  });
};