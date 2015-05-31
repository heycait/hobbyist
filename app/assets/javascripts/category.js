$(document).on('page:change', function() {
  bindEvents();
  $('.tile').hover(function(){
      $(this).addClass('flip');
  },function(){
      $(this).removeClass('flip');
  });
  getLocation();

});

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  var lat = position.coords.latitude;
  var lon = position.coords.longitude;
  var data = { lat: lat, lon: lon};
  $.ajax({
    url: 'http://localhost:3000/hobbies/coordinates',
    type: 'get',
    data: data
  }).done(function(data) {
    context = {categories: data}
    $('#categories').html(template(context))
  }).fail(function() {
      console.log('error');
  });
}
