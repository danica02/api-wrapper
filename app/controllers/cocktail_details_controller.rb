class CocktailDetailsController < ApplicationController
  def index
    client = Cocktail::Api::Client.new
    @cocktails = client.search_cocktail_name(params[:id])
  end

  def show
    client = Cocktail::Api::Client.new
    @informations = client.cocktail_info(params[:id])
  end
end
