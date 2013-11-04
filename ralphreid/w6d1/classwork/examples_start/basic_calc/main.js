function square(number) {
  return number * number
}

function cube(number) {
  return square(number) * number
}

function area(length, width) {
  return length * width
}

function getNumber(message) {
  return parseFloat(prompt(message));
}

window.onload = function() {

  var response = prompt("(s)quare, (c)ube, (a)rea or (q)uit");

  while (response != "q") {
    switch (response) {
      case 's':
        var squared = square(getNumber("Enter number to square"));
        alert("the square is: " + squared);
        break;
      case 'c':
        var cubed = cube(getNumber("Enter number to cube"));
        alert("the cube is: " + cubed);
        break;
      case 'a':
        var length = getNumber("Enter the length");
        var width = getNumber("Enter the width");
        alert("the area is: " + area(length, width));
        break;
    }
    response = prompt("(s)quare, (c)ube, (a)rea or (q)uit");
  }
}