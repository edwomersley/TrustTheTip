class CocktailBarsController < ApplicationController
  def index
    @users = User.all
  end
end
