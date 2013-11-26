# for more details see: http://emberjs.com/guides/models/defining-models/

App.Post = DS.Model.extend
  title: DS.attr 'string'
  content: DS.attr 'string'
  user: DS.belongsTo 'App.User'
