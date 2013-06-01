class Film < ActiveRecord::Base
  attr_accessible :name
  has_many :users, :through => :film_users
  has_many :film_users
end
