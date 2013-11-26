TodoApp.TodosController = Ember.ArrayController.extend
  actions:
    createTodo: ->
      title = @get('newTitle')
      todo = @store.createRecord(TodoApp.Task, {name: title})
      todo.save()
  remaining: ( ->
    @filterBy('status', false).get('length')
  ).property("@each.status")

  inflection: ( ->
    remaining = @get('remaining')
    if remaining == 1 then 'item' else 'items'
  ).property('remaining')
