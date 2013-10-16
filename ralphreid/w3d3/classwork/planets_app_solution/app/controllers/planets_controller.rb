class PlanetsController < ApplicationController

  def index
    @planets = Planet.order(:orbit).all
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new params[:planet]
    @planet.save
    redirect_to @planet
  end

  def edit
    @planet = Planet.find params[:id]
  end

  def show
    @planet = Planet.find params[:id]
  end

  def update
    @planet = Planet.find params[:id]
    redirect_to @planet
  end

  def destroy
    @planet = Planet.find params[:id]
    @planet.destroy
    redirect_to planets_url
  end

end