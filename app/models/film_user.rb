class FilmUser < ActiveRecord::Base
  attr_accessible :film_id, :user_id
end
