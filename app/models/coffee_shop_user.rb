class CoffeeShopUser < ActiveRecord::Base
  attr_accessible :coffee_shop_id, :user_id
  belongs_to :coffee_shop
  belongs_to :user
end
