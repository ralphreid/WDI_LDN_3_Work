class MoonsController < ApplicationController

  def index
    @moons = Moon.all
  end

  def new
    @moon = Moon.new

    respond_to do |format|
      format.html
    end
  end


end