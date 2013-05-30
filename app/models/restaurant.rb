class Restaurant < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :name
  belongs_to :user
end
