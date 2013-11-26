TodoApp.TodosActiveRoute = Ember.Route.extend
  model: ->
    TodoApp.Task.filter (todo) ->
      !todo.get('status')

  renderTemplate: (controller) -> 
    @render('todos/index', {controller: controller})