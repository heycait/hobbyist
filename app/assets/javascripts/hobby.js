$(document).on('page:change', function() {
  bindHobbyEvents();
});

function bindHobbyEvents() {
  $('#add_hobby_button').on('click', showHobbyModal);
};

function showHobbyModal(){
  $('#new-hobby-modal').foundation('reveal', 'open');
}

