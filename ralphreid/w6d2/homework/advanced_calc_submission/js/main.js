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

function tripCalc() {
  // get values from form
  var distance = getFloat('trip-distance');
  var mpg = getFloat('trip-mpg');
  var costPerGallon = getFloat('trip-cost');
  var speed = getFloat('trip-speed');

  // perform calculation
  var duration = distance / speed;
  var cost = (( distance / mpg ) * costPerGallon ).toFixed(2);
  // update the page
  setHtml('trip-answer-alert', "duration is " + duration + " hrs\ncost is $" + cost);
  unhide('trip-answer');
}

function changeBmiUnits() {
  var unit = getValue('bmi-units');
  switch(unit) {
    case 'imperial':
      setHtml('bmi-mass-unit', 'lbs');
      setHtml('bmi-height-unit', 'inches');
      break;
    case 'metric':
      setHtml('bmi-mass-unit', 'kg');
      setHtml('bmi-height-unit', 'cm');
      break;
  }
  
}

function bmiCalc() {
  // get values from form
  var unit = getValue('bmi-units');
  var mass = getFloat('bmi-mass');
  var height = getFloat('bmi-height');

  // perform calculation
  var org = ( mass / Math.pow(height, 2) );
  if (unit == 'imperial') {
    var bmi = org * 703;
  } else {
    bmi = org;
  }

  // update the page
  setHtml('bmi-answer-alert', "bmi is " + bmi.toFixed(2));
  unhide('bmi-answer');

}

function mortgageCalc() {
  // get values from form
  var loan = getFloat('mortgage-loan');
  var apr = getFloat('mortgage-apr');
  var term = getFloat('mortgage-term');

  // perform calculation
  var intrest_mon = ( apr /100 ) / 12;
  var payment = loan * ( intrest_mon * Math.pow( (1 + intrest_mon), term ) / Math.pow((1 + intrest_mon ), term) - 1 );

  // update the page
  setHtml('mortgage-answer-alert', "payment is £ " + payment.toFixed(2));
  unhide('mortgage-answer')
}