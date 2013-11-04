// my first js function
function sayHi(name) {
  console.log("hi "+ name + "!")
}

// confirm type of sayHi
sayHiType = typeof sayHi;
console.log("sayHi is a" + sayHiType);

// try these in console
sayHi('jon');
sayHi;
sayHi.toString();

// function argumants aren't strongly typed
sayHi(99);


function drawHeader(name) {
  console.info("\n**************** "+ name + " ****************\n")
}

////////////////////////
drawHeader("function arguments");


// playing with function arguments....
function printArgs(foo, bar){
  // we can capture named arguments
  console.log("\nfoo is " + foo + ", bar is " + bar);

  for(i=0; i < arguments.length; i++){
    console.log("arguments " + i + " is " + arguments[i])
  }
}

printArgs(99, "red balloons");

printArgs(99);
printArgs(99, "red balloons", "foo", 42);


////////////////////////
drawHeader("return values");

// js functions return 'undefined' without an explicit return
function uselessSum(num1, num2) {
  num1 + num2
}
console.log("uselessSum(2,2) returned " + uselessSum(2,2));

function usefullSum(num1, num2) {
  return num1 + num2
}
console.log("usefullSum(2,2) returned " + usefullSum(2,2));

////////////////////////
drawHeader("variable scope")

x = 99;
y = 99;

function messWithMyVars(){
  x = "foo";
  console.log("x is " + x + " in the scope of messWithMyVars()")
}

function leaveMyVarsAlone(){
  var y = "bar";
  console.log("y is " + y + " in the scope of leaveMyVarsAlone()")
}

console.log("\nx is " + x + " in the global scope");
messWithMyVars();
console.log("\nx is now" + x + " in the global scope");

console.log("\ny is " + y + " in the global scope");
leaveMyVarsAlone();
console.log("\ny is still" + y + " in the global scope");

////////////////////////
drawHeader("functions as variables");

// assign a function to a variable
// this is a bit like lambda or proc in ruby

// this is what we have seen so far function sayHowdy(){}

sayHowdy = function(name) {
  console.log("howdy " + name + "!")
}

sayHowdy("gerry");

// passing a function as an argument

function greatGerry(greetingFunc) {
  greetingFunc("gerry")
}

greatGerry(sayHowdy);
greatGerry(sayHi);


// returning a function (factory pattern)
function makeGreetingFunction(salutation) {
  return function(name) {
    console.log(salutation + " " + name + "!")
  }
}

sayHola = makeGreetingFunction("hola");
sayBonjour = makeGreetingFunction("bonjour");

sayBonjour("Julien");
sayHola("David");

////////////////////////
drawHeader("REMINDER: objects");

// javascript objects are a bit like a mashup between
// a Ruby hash and a ruby object

obj = {foo: 99, bar: 100};

obj['foo'];   // hash-like getter
obj.foo;      // object-like getter

obj['baz'] = 101;   // hash-like setter
obj.baz = 101;      // object-like setter

console.log(obj);


////////////////////////
drawHeader("functiosn as object methods");

// we can use a funcation as a value in an object
// we then refer to it as a method

calc = {
  x: 2,
  y: 3,
  sum: function(){ return this.x + this.y }
}

console.log("the calc object has proproties and methods ", calc);

console.log("calc.sum() returns " + calc.sum());

////////////////////////
drawHeader("constructing objects with a function");

function Person(options) {
  this.name = options.name;
  this.occuption = options.occuption;
  this.say = function(sentence) {
    console.log(this.name + " the " + this.occuption + " says: " + sentence)
  }
  return this
}

params = {name: "jon", occuption: "instructor"};

jon = new Person(params);
console.log("the jon object has proproties and methods ", jon);

jon.say("hello WDI");








































