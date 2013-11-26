App.Msg = DS.Model.extend({
  message: DS.attr('string'),
  posts: DS.belongsTo('App.Post')
})

App.Msg.FIXTURES = [
  {id:1, name: "alkjflkjdlkjdflkjdslkj", post: 1},
  {id:2, name: "alkjsadsdddddddj", post: 2},
  {id:3, name: "ddddddddj", post: 2},
  {id:4, name: "dddfffffffdj", post: 1},
]