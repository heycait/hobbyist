$(document).on('page:change', function() {
  bindFollowEvents();
});

function bindFollowEvents() {
  $('body').on('click', '.follow', followHobby)
}

function followHobby() {
  event.preventDefault();

  var link = $(this);
  var url = $(this).attr('href');

  $.ajax({
    url: url,
    type: 'get'
  }).done(function(data) {
    $(link).text(function(i, text){
      return text === "Follow" ? "Unfollow" : "Follow";
    })
  }).fail(function() {
      console.log('error');
  });
}
