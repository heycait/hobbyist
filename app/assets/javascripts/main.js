$(document).on('page:change', function() {
  $(function(){ $(document).foundation(); });

  $('.backButton').on('click', function() {
    window.history.back();
  })

  bindHobbyEvents();
  bindFollowEvents();
  bindQuestionEvents();
  init_enter_chat_room_form();

});
