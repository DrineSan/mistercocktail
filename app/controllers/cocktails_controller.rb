class CocktailsController < ApplicationController
class cocktailsController < ApplicationController

before_action :set_cocktail, only [:show, :edit, :update, :destroy]

  def index
    @cocktail = cocktail.new
    @cocktails = cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
  end

  def create
    @cocktail = cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render action: 'new'
    end
  end

  def edit
    @cocktail = cocktail.find(params[:id])
  end

  def update
    @cocktail = cocktail.new(cocktail_params)
    if @cocktail.update(cocktail_params)
      redirect_to cocktails_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

private
  def set_cocktail
    @cocktail = cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
