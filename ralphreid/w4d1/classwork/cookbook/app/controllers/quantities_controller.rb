class QuantitiesController < ApplicationController
  def new
    @recipe = Recipe.find params[:recipe_id]
    @quantity = @recipe.quantities.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.quantities.create params[:quantity]
    redirect_to @recipe
  end

end