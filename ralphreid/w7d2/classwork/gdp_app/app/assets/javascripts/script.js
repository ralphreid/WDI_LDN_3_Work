$(function(){
  
  var ctx = document.getElementById('myChart').getContext('2d');

  function draw_chart(data){
    var data_for_chart = {
        labels : _(data).pluck('quarter'),
        datasets : [
          {
            fillColor : "yellow",
            strokeColor : "orange",
            pointColor : "red",
            pointStrokeColor : "silver",
            data : _(data).pluck('gdp')
          }
        ]
      };
      new Chart(ctx).Line(data_for_chart);
  }

  function call_api(offset){
    $.getJSON('/gdps.json', {offset: offset}, function(data){
      draw_chart(data);
      console.log(data)
    });
  };
  
  $('#offset_select').on('change', function(){
    call_api($(this).val());
  })

  call_api(0);
  

})