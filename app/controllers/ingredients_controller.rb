class IngredientsController < ApplicationController
  def show
    client = Cocktail::Api::Client.new
    @ingredients = client.search_ingredient_name(params[:id])
  end
end
