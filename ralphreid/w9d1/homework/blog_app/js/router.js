App.Router.map(function(){
  this.resource("posts", {path: "/"},function(){
    this.route("new") 
  })
});

// App.Router.map(function() {
//   this.resource('posts', { path: '/' });
//   this.resource('post', { path: '/post/:post_id' }, function() {
//     this.route('edit');
//     this.resource('comments', function() {
//       this.route('new');
//     });
//   });
// });

App.PostsRoute = Ember.Route.extend({
  model: function(){
    return App.Post.find();
  }
});

App.PostsNewRoute = Ember.Route.extend({
  model: function(){
    return App.Post;
  }
});

App.PostRoute = Ember.Route.extend({
  model: function(){
    return App.Post.find('post', params.post_id);
  }
});