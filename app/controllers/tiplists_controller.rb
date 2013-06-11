class TiplistsController < ApplicationController
   def new
    @tiplist = Tiplist.new
    # @tiplist.advisables = [Book.new, Restaurant.new, CoffeeShop.new, Song.new, CocktailBar.new, Film.new]
   end 

   def create
    @tiplist = Tiplist.new(params[:tiplist])
    binding.pry
    @tiplist.save!
   end
end
