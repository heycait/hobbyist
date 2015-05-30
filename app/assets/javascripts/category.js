$(document).on('page:change', function() {
  bindEvents();
  // getAllCategories();
  $('.tile').hover(function(){
      $(this).addClass('flip');
  },function(){
      $(this).removeClass('flip');
  });
  getLocation();

});
var lat, lon;

  function getLocation() {
      if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
      } else {
          x.innerHTML = "Geolocation is not supported by this browser.";
      }
  }

  function showPosition(position) {
      lat = position.coords.latitude;
      lon = position.coords.longitude;
  }

$(".categories.show").ready(function() {
  // showCategory();
})

function bindEvents(){
  // $('#category_list').on('click', 'div.pad', showCategory);
  // $('#categories').on('click', '.category_link', showCategory);
  // $('#show_category').on('click', '.hobby_link', findMeetups);
};

function getAllCategories(){
  var source = $('#all_categories').html();
  var template = Handlebars.compile(source);

  $.ajax({
      url: 'http://localhost:3000/categories',
      type: 'get'
  }).done(function(data) {
    context = {categories: data}
    $('#categories').html(template(context))
  }).fail(function() {
      console.log('error');
  });
}

function showCategory(){
  // event.preventDefault();
  // debugger
  // var source = $('#category_template').html();
  // var template = Handlebars.compile(source);
  // var url = $(this).attr('href')
  debugger

  $.ajax({
      url: 'http://localhost:3000/categories/',
      type: 'get'
  }).done(function(data) {
    context = {hobbies: data}
    $('#show_category').html(template(context));
    // $('#categories').hide();
  }).fail(function() {
      console.log('error');
  });
}


function findMeetups(){
  var url = $(this).find('a').attr('href')
  var hobbyName, meetupId;
  debugger
  var data = {lat: lat, lon: lon}
  $.ajax({
      url: 'http://localhost:3000'+url,
      type: 'get',
      data: data
  }).done(function(data) {
    debugger
    // hobbyName = data.hobby;
    // meetupId = data.meetup_id;
    // meetupCall(hobbyName, meetupId);
  }).fail(function() {
      console.log('error');
  });

}

      // url: 'https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat='+lat+'&lon='+lon+'&text='+text+'&category='+category+'&page=3&key=2818c11ba3357336e7b4c19552049',
// function meetupCall(text, category){

//   debugger
//   $.ajax({
//       url: 'https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat=37.7841336&lon=-122.3957437&text=soccer&page=20&key=2818c11ba3357336e7b4c19552049',
//       type: 'get',
//       headers: {
//               "Access-Control-Allow-Origin": '*',
//           }
//   }).done(function(data) {
//     debugger
//   }).fail(function() {
//       console.log('error');
//   });
// }



// meetup key 2818c11ba3357336e7b4c19552049

// https://api.meetup.com/2/open_events?&sign=true&photo-host=public&lat=37.7841336&lon=-122.3957437&text=soccer&category=1&page=20&key=2818c11ba3357336e7b4c19552049









// function showHobby(){
//   event.preventDefault();

//   var source = $('#hobby_template').html();
//   var template = Handlebars.compile(source);
//   var url = $(this).attr('href')

//   $.ajax({
//       url: 'http://localhost:3000'+url,
//       type: 'get'
//   }).done(function(data) {
//     $('#show_hobby').html(template(data));
//     $('#show_category').hide();
//   }).fail(function() {
//       console.log('error');
//   });
// }
