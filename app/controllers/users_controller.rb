class UsersController < ApplicationController
  def index
   if user_signed_in?
     @currentuser = User.facebook(current_user.token)
     @image_url = current_user.image_url
   end
 end
end
