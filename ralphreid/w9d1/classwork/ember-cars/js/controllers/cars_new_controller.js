App.CarsNewController = Ember.ObjectController.extend({
  createCar: function(){
    name = this.get("modelName");
    car = App.Car.createRecord({
      modelName: name,
      brand: App.Brand.find(this.get("select_brand"))
    });

    this.transitionToRoute("cars.index");
  },

  brands: function(){
    return App.Brand.find()
  }.property()
})