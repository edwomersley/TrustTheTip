class UsersController < ApplicationController
    def index
       @currentuser = User.facebook(current_user.token)
    end
end
