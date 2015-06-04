$(document).on('page:change', function() {
  bindQuestionEvents();
});

function bindQuestionEvents() {
  $('body').on('click', 'a.vote', vote)
  $('body').on('submit', '.new_answer', createAnswer);
  $('body').on('submit', '.new_question', createQuestion);
  $('body').on('keyup', '#search', search);
  $('body').on('click', '#popular_sort', sortQuestions);
  $('body').on('click', '#recent_sort', sortQuestions);
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

  $.ajax({
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

function search(){
  event.preventDefault();
  var phrase = $(this).val().toLowerCase();
  var hobby_id = $(this).attr('class');

  if (!phrase){
    phrase = "all";
  }
  var data = { phrase: phrase, hobby_id: hobby_id }

  $.ajax({
    url: '/questions/search',
    type: 'get',
    data: data
  }).done(function(payload) {
    $('#question_list').html($(payload))
  }).fail(function() {
    console.log('error');
  });
}

function sortQuestions(){
  event.preventDefault();
  var hobby_id = $(this).attr('class');
  var url = $(this).attr('href');
  var data = { hobby_id: hobby_id }

  $.ajax({
    url: url,
    type: 'get',
    data: data
  }).done(function(payload) {

    $('#question_list').html($(payload));
  }).fail(function() {
    console.log('error');
  });
}
