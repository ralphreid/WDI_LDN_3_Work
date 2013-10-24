class QuantitiesController < ApplicationController

  def new
    @recipe = Recipe.find params[:recipe_id]
    @quantity = Quantity.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @quantity = @recipe.quantities.build(params[:quantity])
    if @quantity.save
      redirect_to @recipe, notice: 'Recipe was successfully updated!'
    else
      render :new
    end
  end

  def destroy
    quantity = Quantity.find(params[:id])
    recipe = quantity.recipe
    puts recipe
    quantity.delete
    redirect_to(recipe)
  end

end
