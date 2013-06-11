class Advisable < ActiveRecord::Base
attr_accessible :artist, :author, :location, :name, :type, :tiplist_id, :user_id
has_many :users, :through => :advisable_users
has_many :advisable_users
belongs_to :tiplist
end
