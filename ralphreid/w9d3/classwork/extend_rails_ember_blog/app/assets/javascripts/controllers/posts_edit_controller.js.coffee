App.PostsEditController = Ember.ObjectController.extend
  actions:
    editPost: ->
      post = @get('model')
        title: @get('title')
        body: @set('body')
      post.save().then =>
        @transitionToRoute 'post', post