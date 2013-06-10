class Advisable < ActiveRecord::Base
attr_accessible :artist, :author, :location, :name, :type
has_many :users, :through => :advisable_users
has_many :advisable_users
end
