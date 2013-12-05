# for more details see: http://emberjs.com/guides/models/defining-models/

App.Post = DS.Model.extend
  title:        DS.attr 'string'
  body:         DS.attr 'string'
  date:         DS.attr 'date'
  lastUpdatedAt: DS.attr 'date'
  author:       DS.belongsTo 'App.User'
  canUpdate:    DS.attr 'boolean'
  canDestroy:    DS.attr 'boolean'