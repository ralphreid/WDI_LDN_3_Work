$(function(){
  function request(){
    var url = "https://api.github.com/search/repositories?q=rails";
    $.ajax({
      type: "GET",
      url: url,
      async: true,
      cache:false,
      jsonpCallback: "exec",
      username: "ralphreid",
      password: "e7c10248fbe223ba6b5f5491187bac619ab9cb83",
      contentType: "application/json",
      dataType: "jsonp",
      success: function(data){
        console.log(data)
      },
      error: function(){
        alert("something went wrong ! ")
      }
    })
  }

  request();
});