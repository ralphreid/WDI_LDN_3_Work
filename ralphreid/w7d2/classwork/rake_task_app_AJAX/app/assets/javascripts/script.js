$(function(){
  
  var ctx = document.getElementById('myChart').getContext('2d');

  function draw_chart(data){
    var data_for_chart = {
        labels : _(data).pluck('date_value'),
        datasets : [
          {
            fillColor : "yellow",
            strokeColor : "orange",
            pointColor : "red",
            pointStrokeColor : "silver",
            data : _(data).pluck('usd')
          },
          {
            fillColor : "green",
            strokeColor : "blue",
            pointColor : "pink",
            pointStrokeColor : "cyan",
            data : _(data).pluck('gbp')
          }
          // {
          //   fillColor : "green",
          //   strokeColor : "blue",
          //   pointColor : "pink",
          //   pointStrokeColor : "cyan",
          //   data : _(data).pluck('jpy')
          // }
        ]
      };
      new Chart(ctx).Line(data_for_chart);
  }

  function call_api(offset){
    $.getJSON('/rates.json', {offset: offset}, function(data){
      draw_chart(data);
      $.each(data, function(index, rate){
        $("#rates_list").append("<li>" + rate.date_value + ' - ' + rate.usd + '</li>');
      });
    });
  };
  
  $('#offset_select').on('change', function(){
    call_api($(this).val());
  })

  call_api(0);
  

})