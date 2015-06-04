$(document).on('page:change', function() {
  bindHobbyEvents();
});

function bindHobbyEvents() {
  $('body').on('click', '.add_hobby_button', showHobbyModal);
  // $('#followers_button').on('click', showFollowerModal);
};

function showHobbyModal(){
  $('#new-hobby-modal').foundation('reveal', 'open');
}

// function showFollowerModal(){
//   $('#followers-modal').foundation('reveal', 'open');
// }


