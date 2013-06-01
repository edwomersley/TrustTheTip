class RestaurantUser < ActiveRecord::Base
  attr_accessible :restaurant_id, :user_id
  belongs_to :restaurant
  belongs_to :user
end
