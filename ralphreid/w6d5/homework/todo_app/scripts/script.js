$(function(){


  var tasks = [
    {desc: 'sadffdsaf', stat: '1'},
    {desc: 'sdsaf', stat: '1'},
    {desc: 'sssd', stat: '0'},
    {desc: 'sasdffffffdsaf', stat: '0'}
  ];

  _(tasks).each(function(task){ console.log(task.desc + task.stat) });

  var application = $("#application").html();
  $('#list').html(_.template(application, {tasks: tasks}));
 
  
})