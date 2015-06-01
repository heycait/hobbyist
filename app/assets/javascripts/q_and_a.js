$(document).on('page:change', function() {
  bindQuestionEvents();
});

function bindQuestionEvents() {
  $('body').on('click', 'a.vote', vote)
  // $('body').on('click', '.add_answer_button', answerModal)
  $('.new_answer').on('submit', createAnswer);
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

// function answerModal() {
//   event.preventDefault();
//   console.log('show modal')
//   $('#new_answer_modal').foundation('reveal', 'open');
//   $('#new_answer').attr('action').val(this.id);
//   debugger
// }

function createAnswer () {
  event.preventDefault();
  console.log('createAnswer')

  var question_id = this.parentElement.classList[0];
  var body = $(this).find('textarea').val()
  var data = {answer: {body: body, question_id: question_id}};
  $.ajax({
    url: '/answers',
    type: 'post',
    data: data
  }).done(function(data) {
    $('#modal'+data.question_id).foundation('reveal', 'close');
    $('#modal'+data.question_id).find('textarea').val('');
    $('#panel'+data.question_id).find('ul').append('<li>'+data.body+'</li>')
  }).fail(function() {
    console.log('error');
  });
}