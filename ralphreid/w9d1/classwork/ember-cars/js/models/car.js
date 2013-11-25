App.Car = DS.Model.extend({
  modelName: DS.attr("string"), 
  brand: DS.belongsTo("App.Brand")
});

App.Car.FIXTURES = [
  {id: 1, modelName: "Rolls Phantom", brand: 1},
  {id: 2, modelName: "Vespa", brand: 1},
  {id: 3, modelName: "Mustang"},
  {id: 4, modelName: "Audi"},
  {id: 5, modelName: "Punto", brand: 1}
]