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

  $('#savings-deposit').on('click', function(){
    var amount = parseInt($('savings-amount').val());
    savingsBalance = amount + savingsBalance;
    updateDisplay();
  });

  function withdrawFunds(){

  }

  function updateDisplay(){
    var element = $('#checking-balance');
    if (checkingBalance <= 0) {
      element.addClass('zero');
    } else {
      element.removeClass('zero');
    };

    var element2 = $('savings-balance');
    if (savingsBalance <= 0){
      element2.addClass('zero');
    } else {
      element2.removeClass('zero');
    };

  }


})