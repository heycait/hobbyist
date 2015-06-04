$(document).on('page:change', function() {
  $(function(){ $(document).foundation(); });

  $('.backButton').on('click', function() {
    window.history.back();
  })

  $('.doNothing').css("cursor", "default");

  bindHobbyEvents();
  bindQuestionEvents();
  init_enter_chat_room_form();

});
