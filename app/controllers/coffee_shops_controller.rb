class CoffeeShopsController < ApplicationController
  def index
    @users = User.all
  end
end
