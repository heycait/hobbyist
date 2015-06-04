function bindHobbyEvents() {
  $('body').on('click', '.add_hobby_button', showHobbyModal);
};

function showHobbyModal(){
  $('#new-hobby-modal').foundation('reveal', 'open');
}
