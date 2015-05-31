$(document).on('page:change', function() {
  bindLikeEvents();
});

function bindLikeEvents() {
  $('body').on('click', '.like', likeHobby)
}

function likeHobby() {
  event.preventDefault();
  var link = $(this);
  var url = $(this).attr('href');
  $.ajax({
    url: url,
    type: 'get'
  }).done(function(data) {
    $(link).text(function(i, text){
      return text === "Like" ? "Unlike" : "Like";
    })
  }).fail(function() {
      console.log('error');
  });
}