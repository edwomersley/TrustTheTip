class RestaurantsController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end
end
