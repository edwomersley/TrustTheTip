class Book < ActiveRecord::Base
  attr_accessible :author, :name
  belongs_to :user
end
