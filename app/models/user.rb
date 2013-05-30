class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image_url
  # attr_accessible :title, :body
  has_many :restaurants
  has_many :books
  has_many :films
  has_many :coffee_shops
  has_many :songs
  has_many :cocktail_bars
end
