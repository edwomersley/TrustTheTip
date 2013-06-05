class UsersController < ApplicationController
    def index
     @currentuser = User.facebook(current_user.token)
     @image_url = current_user.image_url
     binding.pry
 end
end
