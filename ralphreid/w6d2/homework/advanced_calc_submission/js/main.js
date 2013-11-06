// function getValue(id) {
//   // return document.getElementById(id).value
//   $(id).val()
// }

// function $(id) {
//   // eturn parseFloat(getValue(id))
//   $(getValue(id))
// }

function unhide(id) {
  // document.getElementById(id).className = ""
  $(id).removeClass()
}

function setHtml(id, content) {
  // document.getElementById(id).innerHTML = html
  $(id).text(content)
}

function basicCalc() {
  //get values from form
  var num1 = parseFloat($('#basic-num-1').val());
  var num2 = parseFloat($('#basic-num-2').val());
  var op = $('#basic-operation').val();

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
  setHtml('#basic-answer-alert', num1 + " " + op + " " + num2 + " = " + ans);
  unhide('#basic-answer');  


}

function tripCalc() {
  // get values from form
  var distance = parseFloat($('#trip-distance').val());
  var mpg = parseFloat($('#trip-mpg').val());
  var costPerGallon = parseFloat($('#trip-cost').val());
  var speed = parseFloat($('#trip-speed').val());

  // perform calculation
  var duration = (distance / speed).toFixed(2);
  var cost = (( distance / mpg ) * costPerGallon ).toFixed(2);
  // update the page
  setHtml('#trip-answer-alert', "duration is " + duration + " hrs\ncost is $" + cost);
  unhide('#trip-answer');
}

function changeBmiUnits() {
  var unit = $('#bmi-units').val();
  switch(unit) {
    case 'imperial':
      setHtml('#bmi-mass-unit', 'lbs');
      setHtml('#bmi-height-unit', 'inches');
      break;
    case 'metric':
      setHtml('#bmi-mass-unit', 'kg');
      setHtml('#bmi-height-unit', 'cm');
      break;
  }
  
}

function bmiCalc() {
  // get values from form
  var unit = $('#bmi-units').val();
  var mass = parseFloat($('#bmi-mass').val());
  var height = parseFloat($('#bmi-height').val());

  // perform calculation
  var org = ( mass / Math.pow(height, 2) );
  if (unit == 'imperial') {
    var bmi = org * 703;
  } else {
    bmi = org;
  }

  // update the page
  setHtml('#bmi-answer-alert', "bmi is " + bmi.toFixed(2));
  unhide('#bmi-answer');

}

function mortgageCalc() {
  // get values from form
  var loan = parseFloat($('#mortgage-loan').val());
  var apr = parseFloat($('#mortgage-apr').val());
  var term = parseFloat($('#mortgage-term').val());

  // perform calculation
  var intrest_mon = ( apr /100 ) / 12;
  var payment = loan * ( intrest_mon * Math.pow( (1 + intrest_mon), term ) / Math.pow((1 + intrest_mon ), term) - 1 );

  // update the page
  setHtml('#mortgage-answer-alert', "payment is £ " + payment.toFixed(2));
  unhide('#mortgage-answer')
}