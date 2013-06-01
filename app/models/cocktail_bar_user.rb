class CocktailBarUser < ActiveRecord::Base
  attr_accessible :cocktail_bar_id, :user_id
  belongs_to :user
  belongs_to :cocktail_bar
end
