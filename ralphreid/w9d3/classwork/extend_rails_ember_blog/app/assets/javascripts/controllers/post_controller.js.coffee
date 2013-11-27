App.PostController = Ember.ObjectController.extend
  needs: ['auth']
  isAuthenticated: Em.computed.alias "controllers.auth.isAuthenticated"
  actions:
    edit: ->
      @transitionToRoute 'posts.edit'
    destroy: ->
      @transitionToRoute 'posts.destroy'

