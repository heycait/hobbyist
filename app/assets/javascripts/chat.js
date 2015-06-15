$(document).on('page:change', function() {
  if ($('#chat_messages').is(':visible')) {
    var hobby = $('#hobby_title').text();
    var myDataRef = new Firebase('https://blistering-fire-1022.firebaseio.com/'+hobby);
    $('#messageInput').keypress(function (e) {
      if (e.keyCode == 13) {
        var name = $('#nameInput').val();
        var text = $('#messageInput').val();
        myDataRef.push({name: name, text: text});
        $('#messageInput').val('');
      }
    });
    myDataRef.on('child_added', function(snapshot) {
      var message = snapshot.val();
      displayChatMessage(message.name, message.text);
    });
    function displayChatMessage(name, text) {
      $('<div/>').text(text).prepend($('<em/>').text(name+': ')).appendTo($('#chat_messages'));
      $('#chat_messages')[0].scrollTop = $('#chat_messages')[0].scrollHeight;
    };
  };
});