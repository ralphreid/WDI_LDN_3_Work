$(function(){

  // sample data
  var tasks = [
    {desc: 'sadffdsaf', stat: '-1'},
    {desc: 'sdsaf', stat: '-1'},
    {desc: 'sssd', stat: '1'},
    {desc: 'sasdffffffdsaf', stat: '1'}
  ];


  

  // onclick button actions
  $('#all').click(function(){
    renderApplication(tasks);
  });

  $('#new').click(function(){
    renderNewTask()
  });

  $('#todo').click(function(){
    todo = _(tasks).filter(function(t){return t.stat == 1})
    renderApplication(todo);
  });

  $('#completed').click(function(){
    completed = _(tasks).filter(function(t){return t.stat == -1})
    renderApplication(completed);
  });


  // add new task to the list
  function addTask(){
    $('#add-task').click(function(){
      var taskAdd = $('#newTaskEntry').val();
      tasks.push({desc: taskAdd, stat: '1'})
    });
  };

  // render to page
  function renderApplication(tasks){
    var application = $("#application").html();
    $('#list').html(_.template(application, {tasks: tasks}));
    $('#newEntry').hide();
  };

  // render new task template
  function renderNewTask() {
    var newTask = $('#newTask').html();
    $('#newEntry').show();
    $('#newEntry').html(newTask);
    addTask();
  };




 
})