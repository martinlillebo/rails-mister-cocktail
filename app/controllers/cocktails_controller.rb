class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @new_cocktail = Cocktail.create!(name: params[:cocktail][:name])
  end

  def new
    @cocktail = Cocktail.new
  end

  def cocktail_params
    params.require(:cocktail).permit(:photo) # fjernet ":title, :body," fra kitt boiler
  end
end
