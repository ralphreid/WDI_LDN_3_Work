function Person(fname, lname, options){

  var self = this;

  function initialize(fname, lname, options){
    self.fname = fname;
    self.lname = lname;

    defaultOptions = {
      age: 25
    }
    _.extend(self, defaultOptions, options);
  }

  self.sayMyName = function(){
    alert(self.fname + " " + self.lname + "!");
  }

  initialize(fname, lname, options || {});
  return self

}