class Song < Advisable
  attr_accessible :artist, :name
  # has_many :users, :through => :song_users
  # has_many :song_users
  
end
