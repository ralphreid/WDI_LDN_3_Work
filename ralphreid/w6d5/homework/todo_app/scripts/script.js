$(function(){

  // sample data
  var tasks = [
    {desc: 'sadffdsaf', stat: '-1'},
    {desc: 'sdsaf', stat: '-1'},
    {desc: 'sssd', stat: '1'},
    {desc: 'sasdffffffdsaf', stat: '1'}
  ];


  renderApplication(tasks);

  // onclick button actions
  $('#all').click(function(){
    renderApplication(tasks);
  });

  $('#new').click(function(){
    console.log('new button clicked')
  });

  $('#todo').click(function(){
    todo = _(tasks).filter(function(t){return t.stat == 1})
    renderApplication(todo);
  });

  $('#completed').click(function(){
    completed = _(tasks).filter(function(t){return t.stat == -1})
    renderApplication(completed);
  });

   
 
  // fiter list based ons status flag

  // render new task template

  // capture new task

  // add new task to the list

  // render to page
  function renderApplication(tasks){
    var application = $("#application").html();
    $('#list').html(_.template(application, {tasks: tasks}));
  };
 
})