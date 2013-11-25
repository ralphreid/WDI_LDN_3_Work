App.CarsNewController = Ember.ObjectController.extend({
  createCar: function(){
    name = this.get("modelName");
    car = App.Car.createRecord({
      modelName: name
    });

    this.transitionToRoute("cars.index");
  },

  brands: function(){
    return App.Brand.find()
  }.property()
})