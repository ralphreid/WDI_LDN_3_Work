# for more details see: http://emberjs.com/guides/models/defining-models/

App.Post = DS.Model.extend
  title:    DS.attr 'string'
  body:     DS.attr 'string'
  date:     DS.attr 'date'
  modified: DS.attr 'date'
  isFresh:  DS.attr 'boolean'
  author:   DS.belongsTo 'App.User'
