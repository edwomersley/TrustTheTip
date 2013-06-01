class Restaurant < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :name
  has_many :users, :through => :restaurant_users
  has_many :restaurant_users
end
