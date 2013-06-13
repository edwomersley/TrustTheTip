class Restaurant < Advisable
  attr_accessible :latitude, :location, :longitude, :name
  # has_many :users, :through => :restaurant_users
  # has_many :restaurant_users
  # geocoded_by :my_cool_geocoding_method
  has_many :advisables, :as => :type

  # def my_cool_geocoding_method
  #    "#{self.location} #{destination.name}"
  # end
end
