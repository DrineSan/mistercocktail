class IngredientsController < ApplicationController

before_action :set_ingredient, only [:show, :edit, :update, :destroy]

  def index
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  # def show
  #   @ingredient = Ingredient.find(params[:id])
  # end

  def new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render action: 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path
  end

private
  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
