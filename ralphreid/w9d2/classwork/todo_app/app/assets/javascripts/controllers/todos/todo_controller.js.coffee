TodoApp.TodoController = Ember.ObjectController.extend
  actions:
    removeTodo: ->
      todo = @get('model')
      todo.deleteRecord()
      todo.save()
  toggleStatus: ->
    model = @get('model')
    status = !!(model.get('status'))
    model.set('status', !status)
    model.save()