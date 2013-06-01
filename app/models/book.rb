class Book < ActiveRecord::Base
  attr_accessible :author, :name
  has_many :book_users
  has_many :users, :through => :book_users
end
