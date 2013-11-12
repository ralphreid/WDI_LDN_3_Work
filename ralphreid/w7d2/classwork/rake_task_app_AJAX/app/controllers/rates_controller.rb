class RatesController < ApplicationController
  respond_to :html, :json

  def index
    rates = Rate
    rates = rates.offset(params[:offset].to_i) if params[:offset]
    rates = rates.limit(100)
    respond_with rates
  end

  
end