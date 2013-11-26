TodoApp.TodosIndexRoute = Ember.Route.extend
  model: ->
    TodoApp.Task.find()