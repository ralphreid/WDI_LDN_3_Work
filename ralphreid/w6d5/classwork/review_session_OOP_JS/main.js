function app(){

  window.jack   = new Person("Jack", "Lalley", {age: 18});
  window.oliver = new Person("Oliver", "Peate", {age: 27});
  window.sophie = new Person("Sophie", "Chitty");

  window.classroom = [
    jack,
    oliver,
    sophie
  ]
}


$("document").ready(app)