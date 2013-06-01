class Song < ActiveRecord::Base
  attr_accessible :artist, :name
  has_many :users, :through => :song_users
  has_many :song_users
end
