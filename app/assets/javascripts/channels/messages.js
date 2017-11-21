App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    $("#messages").removeClass('hidden')
    $('#messages').append(this.renderMessage(data));
    return $("#messages").scrollTop(99299239932932);
  },
  renderMessage: function(data) {
    return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
  }
});