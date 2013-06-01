class FilmUser < ActiveRecord::Base
  attr_accessible :film_id, :user_id
  belongs_to :film
  belongs_to :user
end
