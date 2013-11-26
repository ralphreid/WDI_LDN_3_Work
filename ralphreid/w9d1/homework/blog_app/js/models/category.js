App.Category = DS.Model.extend({
  name: DS.attr("string"),
  posts: DS.hasMany("App.Post")
})

App.Category.FIXTURES = [
  {id:1, name: "Cool"},
  {id:2, name: "Strange"},
  {id:3, name: "Professional"}
]