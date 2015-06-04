function bindFollowEvents() {
  $('body').on('click', '#follow', followHobby);
  $('body').on('click', '#followers_button', showFollowers);
  $('body').on('click', '#add_question_button', showQuestionModal);
  $('body').on('click', '.add_answer_button', showAnswerModal);
}

function followHobby() {
  event.preventDefault();

  var link = $(this);
  var url = $(this).attr('href');

  $.ajax({
    url: url,
    type: 'get'
  }).done(function(count) {
    $(link).text(function(i, text){
      return text === "Follow" ? "Unfollow" : "Follow";
    });

    var text;
    if(count == 1){
      $('#followers_button').text(count+' Follower');
      $('#followers-modal').find('#modalTitle').text('Follower')
    }
    else{
      $('#followers_button').text(count+' Followers');
      $('#followers-modal').find('#modalTitle').text('Followers')
    }
  }).fail(function() {
      console.log('error');
  });
}

function showFollowers() {
  $('#followers-modal').foundation('reveal', 'open');
  var url = $(this).attr('href');

  $.ajax({
    url: url,
    type: 'get'
  }).done(function(followers) {
    $('#following_users').html(followers);
  }).fail(function() {
      console.log('error');
  });
}

function showQuestionModal(){
  $('#new-question-modal').foundation('reveal', 'open');
}

function showAnswerModal(){
  var modal = '#modal'+this.id;
  $(modal).foundation('reveal', 'open');
}
