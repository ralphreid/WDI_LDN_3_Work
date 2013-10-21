class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new params[:ingredient]
    @ingredient.save
    redirect_to @ingredient  end

  def edit
    @ingredient = Ingredient.find params[:id]
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find params[:id]
  end

  def update
    ingredient = Ingredient.find params[:id]
    if params[:recipe_id]
      ingredient.recipes.push(Recipe.find(params[:recipe_id]))
      ingredient.save
    else
      ingredient.update_attributes(params[:ingredient])
    end
    redirect_to ingredient
  end

  def destroy
    @ingredient = Ingredient.find params[:id]
    @ingredient.destroy
    redirect_to ingredients_url
  end

end
