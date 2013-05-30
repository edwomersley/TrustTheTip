class RestaurantUser < ActiveRecord::Base
  attr_accessible :restaurant_id, :user_id
end
