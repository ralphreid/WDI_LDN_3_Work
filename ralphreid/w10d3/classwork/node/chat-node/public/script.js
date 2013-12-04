$(function(){
  var socket = io.connect();

  function sendMessage(){
    if($("#messageInput").val() != ""){
      socket.emit("message", $("#messageInput").val());
      addMessage($("#messageInput").val(), "Me");
    }
  }

  function setPseudo(){
    if($("#pseudoInput").val() != ""){
      socket.emit("setPseudo", $("#pseudoInput").val());
      $("#chatControls").show();
      $("#pseudoInput").hide();
      $("#pseudoSet").hide();
    }
  }
  function addMessage(msg, pseudo){
    $("#chatEntries").append("<div class='message'><p><strong>"+pseudo+"</strong>:"+msg+"</p></div>")
  }
  socket.on("message", function(data){
    addMessage(data["message"], data["pseudo"])
  })

  $("#chatControls").hide();
  $("#pseudoSet").on("click", setPseudo);
  $("#submit").on("click", sendMessage);
})