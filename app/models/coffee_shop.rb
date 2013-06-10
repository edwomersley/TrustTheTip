class CoffeeShop < Advisable
  attr_accessible :latitude, :location, :longitude, :name
  # has_many :users, :through => :coffee_shop_users
  # has_many :coffee_shops_users
  has_many :advisables, :as => :type
end
