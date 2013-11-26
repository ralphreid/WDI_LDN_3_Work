App.NewController = Ember.ObjectController.extend({
  createPost: function(){
    title = this.get("title");
    post = App.Post.createRecord({
      title: title,
      category: App.Category.find(this.get('select_category'))
    });

    this.transitionToRoute("posts.index");
  },

  categories: function(){
    return App.Category.find()
  }.property()
}),

// App.PostIndexController = Ember.ObjectController.extend({

// })

App.PostsController = Ember.ArrayController.extend({
  createPost: function(){
    var post = App.Post.createRecord({
      title: this.get("title"),
      category: App.Category.find(this.get("category_id"))
    })
    post.store.commit()
  }
})