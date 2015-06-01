$(document).on('page:change', function() {
  bindHobbyEvents();
});

function bindHobbyEvents() {
  // $('.new_hobby').on('submit', createHobby);
};

function createHobby() {
  event.preventDefault();
  // debugger
  var data = $(this).serialize();
  var img = $(this).find("input[type='file']").val()
  // debugger
  var response = $.ajax({
    url: '/hobbies',
    type: 'post',
    data: data
  }).done(function(hobby) {
    debugger
    var modal = $('#new-hobby-modal');

    modal.foundation('reveal', 'close');
    modal.find('textarea').val('');
    $("input[id='hobby_name']").val('');
    $("input[id='hobby_title']").val('');

    $('#show_category').append(hobby);

    bindQuestionEvents();
  }).fail(function() {
    console.log('error');
  });
}
