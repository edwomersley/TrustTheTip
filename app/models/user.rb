require 'koala'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image_url, :provider, :uid, :username
  # attr_accessible :title, :body
  has_many :restaurant_users
  has_many :restaurants, :through => :restaurant_users
  has_many :book_users
  has_many :books, :through => :book_users
  has_many :film_users
  has_many :films, :through => :film_users
  has_many :coffee_shop_users
  has_many :coffee_shops, :through => :coffee_shop_users
  has_many :song_users
  has_many :songs, :through => :song_users
  has_many :cocktail_bar_users
  has_many :cocktail_bars, :through => :cocktail_bar_users

 #  def self.from_omniauth(auth)
 #  where(auth.slice(:provider, :uid)).first_or_create do |user|
 #    user.provider = auth.provider
 #    user.uid = auth.uid
    
 #  end
 # end

 def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.username = auth.info.nickname
    user.token = auth.credentials.token
    user.email = auth.info['email']
    user.password = auth.credentials.token
    
    # user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
    

end

def facebook
  facebook ||= Koala::Facebook::API.new(token)
  facebook.get_connection('me', 'friends').count
end

# def self.friendcount
#   @facebook.get_connection('me', 'friends').size
#   binding.pry
# # rescue koala::Facebook::APIError => e
# #   logger.info e.to_s
# #   nil
# end

# def self.new_with_session(params, session)
#   if session["devise.user_attributes"]
#     new(session["devise.user_attributes"], without_protection: true) do |user|
#       user.attributes = params
#       user.valid?
#     end
#   else
#     super
#   end
# end

# def password_required?
#   super && provider.blank?
# end

# def update_with_password(params, *options)
#   if encrypted_password.blank?
#     update_attributes(params, *options)
#   else
#     super
#   end
#  end
end
