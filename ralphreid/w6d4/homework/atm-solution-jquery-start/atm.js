$(function(){


  var checkingBalance = 0;
  var savingsBalance = 0;

  $checkingDeposit = $('#checking-deposit');

  $checkingDeposit.on('click', getChecking);

  function getChecking(){
    var amount = parseInt($('#checking-amount').val());
    checkingBalance = amount + checkingBalance;
    updateDisplay();
  }


  function withdrawFunds(){

  }

  function updateDisplay(){

  }


})