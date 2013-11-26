App.Post = DS.Model.extend({
  title: DS.attr('string'),
  msgs: DS.hasMany('App.Msg'),
  category: DS.belongsTo("App.Category")
});

App.Post.FIXTURES = [
  {id:1, title: 'yah mon this is the first one', category: 1},
  {id:2, title: 'Bro, what a gowon?', category: 2}
]