require 'koala'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image_url, :provider, :uid, :username, :token
  # attr_accessible :title, :body
  # has_many :restaurant_users
  # has_many :restaurants, :through => :restaurant_users
  # has_many :book_users
  # has_many :books, :through => :book_users
  # has_many :film_users
  # has_many :films, :through => :film_users
  # has_many :coffee_shop_users
  # has_many :coffee_shops, :through => :coffee_shop_users
  # has_many :song_users
  # has_many :songs, :through => :song_users
  # has_many :cocktail_bar_users
  # has_many :cocktail_bars, :through => :cocktail_bar_users
  has_many :advisable_users
  has_many :advisables, :through => :advisable_users, :source => :advisable

  # current_user.books
  # current_user.advisables.where(:type => 'Book')


 def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.username = auth.info.nickname
    user.token = auth.credentials.token
    user.email = auth.info['email']
    user.password = auth.credentials.token
    user.image_url = auth.info.image

    
    # user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
    

end
#commented out while testing in the console

def self.facebook(token)
  facebook ||= Koala::Facebook::API.new(token)
  facebook.get_connection('me', 'friends').count
end

# def facebook
#   facebook ||= Koala::Facebook::API.new(token)
#   # facebook.get_connection('me', 'friends').count
# end

def self.select(current_user)
r = []
    @books = current_user.books
        if @books != nil
        r << @books
    @restaurants = current_user.restaurants
        if @restaurants != nil
            r << @restaurants
    @coffeeshops = current_user.coffee_shops
        if @coffeeshops != nil
            r << @coffeeshops
    @films = current_user.films
        if @films != nil
            r << @films
    @cocktailbars = current_user.cocktail_bars
        if @cocktailbars != nil
            r << @cocktailbars
    @songs = current_user.songs
        if @songs != nil
           
            r << @songs
        end
       end
      end
     end
    end
  end
  return r 

end


# def friend_count
#   facebook.get_connection('me', 'friends').size
# # # rescue koala::Facebook::APIError => e
# # #   logger.info e.to_s
# # #   nil
# end

end
