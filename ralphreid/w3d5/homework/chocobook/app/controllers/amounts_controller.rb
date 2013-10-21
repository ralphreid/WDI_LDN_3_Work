class AmountController < ApplicationController
  def index
    @amounts = Amount.all
  end

  

end
