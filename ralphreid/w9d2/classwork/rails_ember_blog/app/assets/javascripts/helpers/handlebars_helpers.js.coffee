Ember.Handlebars.helper 'format-markdown', (input) ->
  window.showdown ?= new Showdown.converter()
  new Handlebars.SafeString(showdown.makeHtml(input))

Ember.Handlebars.helper 'formate-date', (date) ->
  moment(date).fromNow()
