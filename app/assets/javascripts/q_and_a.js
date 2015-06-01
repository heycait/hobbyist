$(document).on('page:change', function() {
  bindQuestionEvents();
});

function bindQuestionEvents() {
  $('body').on('click', 'a.vote', vote)
  $('.new_answer').on('submit', createAnswer);
  $('.new_question').on('submit', createQuestion);
};

function vote(){
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

function createAnswer() {
  event.preventDefault();

  var data = $(this).serialize();

  var response = $.ajax({
    url: '/answers',
    type: 'post',
    data: data
  }).done(function(answer) {
    var question_id = $('.open')[0].classList[0];
    var modal = $('#modal'+question_id);

    modal.foundation('reveal', 'close');
    modal.find('textarea').val('');

    $('#panel'+question_id).find('ul').append(answer);
  }).fail(function() {
    console.log('error');
  });
}

function createQuestion() {
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
