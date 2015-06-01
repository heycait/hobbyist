$(document).on('page:change', function() {
  bindHobbyEvents();
});

function bindHobbyEvents() {
  $('.new_hobby').on('submit', createHobby);
};

function createHobby() {
  event.preventDefault();
  // debugger
  var data = $(this).serialize();

  var response = $.ajax({
    url: '/questions',
    type: 'post',
    data: data
  }).done(function(question) {
    var modal = $('#new-question-modal');

    modal.foundation('reveal', 'close');
    modal.find('textarea').val('');
    $("input[id='question_title']").val('');

    $('#question_list').append(question);

    bindQuestionEvents();
  }).fail(function() {
    console.log('error');
  });
}
