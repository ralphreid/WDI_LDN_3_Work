App.IndexRoute = Ember.Route.extend
  redirect: -> @transistionTo('posts')