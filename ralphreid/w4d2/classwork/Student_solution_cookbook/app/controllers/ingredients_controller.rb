class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(params[:ingredient])
    if @ingredient.save
      redirect_to @ingredient, notice: 'Ingredient was successfully created!'
    else
      render :new
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = ingredient.find(params[:id])
    if @ingredient.update_attributes(params[:ingredient])
      redirect_to @ingredient, notice: 'Ingredient was successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end

end
