class CocktailBar < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :name
  has_many :users, :through => :cocktail_bar_users
  has_many :cocktail_bar_users
end
