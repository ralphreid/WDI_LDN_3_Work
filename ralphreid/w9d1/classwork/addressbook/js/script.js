window.App = Ember.Application.create();

App.Store = DS.Store.extend({
  adapter: DS.FixtureAdapter
});

App.Router.map(function(){
  this.resource("contacts", {path: "/"})
});

App.ContactsRoute = Ember.Route.extend({
  model: function(){
    return App.Person.find()
  }
});

App.Category = DS.Model.extend({
  name: DS.attr("string"),
  persons: DS.hasMany("App.Person")
})

App.Category.FIXTURES = [
  {id:1, name: "Family"},
  {id:2, name: "Friends"},
  {id:3, name: "Professional"}
]

App.Person = DS.Model.extend({
  first: DS.attr("string"),
  last: DS.attr("string"),
  phone: DS.attr("number"),
  category: DS.belongsTo("App.Category")
});

App.Person.FIXTURES = [
  {id:1, first:"gerry", last:"mathe", phone:"8029387403298", category: 1},
  {id:2, first:"jon", last:"Chambers", phone:"8029387403298", category: 2}
]

App.ContactController = Ember.ObjectController.extend({
  isEditing: false,
  editContact: function(){
    this.set("isEditing", true)
  },
  saveContact: function(){
    person = this.get("model");
    category = App.Category.find(this.get("category_id"))
    person.set("category", category)
    person.save()
    this.set("isEditing", false)
  },
  deleteContact: function(){
    var contact = this.get("model");
    contact.deleteRecord();
    contact.save;
  },
  selected_category: function(){
    return App.Category.find(this.get("category.id"))
  }.property(),
  categories: function(){
    return App.Category.find()
  }.property()
})

App.ContactsController = Ember.ArrayController.extend({
  createContact: function(){
    var contact = App.Person.createRecord({
      first: this.get("first"),
      last: this.get("last"),
      phone: this.get("phone"),
      category: App.Category.find(this.get("category_id"))
    })
    contact.store.commit()
  },

  count_contacts: function(){
    return this.get("length")
  }.property("length"),

  contact_inflection: function(){
    return this.get("length") == 1 ? "contact" : "contacts";
  }.property("length"),

  categories: function(){
    return App.Category.find()
  }.property()

})







