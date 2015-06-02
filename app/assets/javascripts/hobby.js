$(document).on('page:change', function() {
  bindHobbyEvents();
});

function bindHobbyEvents() {
  $('#add_hobby_button').on('click', showHobbyModal);
  // $('#followers_button').on('click', showFollowerModal);
};

function showHobbyModal(){
  $('#new-hobby-modal').foundation('reveal', 'open');
}

// function showFollowerModal(){
//   $('#followers-modal').foundation('reveal', 'open');
// }


