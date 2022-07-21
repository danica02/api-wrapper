class HomeController < ApplicationController
  def index
    client = Cocktail::Api::Client.new
    @randoms = client.random_drinks
  end
end
