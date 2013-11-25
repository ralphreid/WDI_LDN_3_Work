App.Router.map(function(){
  this.resource("cars", {path: "/"}, function(){
    this.route("new")
  })
});

App.CarsIndexRoute = Ember.Route.extend({
  model:function(){
    return App.Car.find();
  }
});

App.CarsNewRoute = Ember.Route.extend({
  model: function(){
    return App.Car;
  }
});