class PlanetsController < ApplicationController 

  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    planet = Planet.new params[:planet]
    planet.save
    redirect_to planets_url
  end

  def show
    @planet = Planet.find params[:id]
  end

  def destroy
    Planet.find(params[:id]).destroy
    redirect_to planets_url
  end

  def edit
    @planet = Planet.find params[:id]
  end

  def update
    @planet = Planet.find params[:id]
    @planet.update_attributes(params[:planet])
    redirect_to @planet
  end

end