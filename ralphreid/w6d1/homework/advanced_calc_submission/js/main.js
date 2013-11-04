function getValue(id) {
  return document.getElementById(id).value
}

function getFloat(id) {
  return parseFloat(getValue(id))
}

function unhide(id) {
  document.getElementById(id).className = ""
}

function setHtml(id, html) {
  document.getElementById(id).innerHTML = html
}

function basicCalc() {
  //get values from form
  var num1 = getFloat('basic-num-1')
  var num2 = getFloat('basic-num-2')
  var op = getValue('basic-operation')

  // perform calculation
  switch(op) {
    case '+':
      var ans = num1+num2;
      break;
    case '-':
      var ans = num1 - num2;
      break;
    case '*':
      var ans = num1 * num2;
      break;
    case '/':
      var ans  = num1/num2;
      break;
}

  // update the page
  setHtml('basic-answer-alert', num1 + " " + op + " " + num2 + " = " + ans);
  unhide('basic-answer');  


}

function tripCalc() {}

function changeBmiUnits() {}

function bmiCalc() {}

function mortgageCalc() {}