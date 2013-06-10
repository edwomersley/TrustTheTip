class UsersController < ApplicationController
  def index
     if user_signed_in?
       @currentuser = User.facebook(current_user.token)
       @image_url = current_user.image_url
       @user = current_user
      end
   end

   def show
    @myinfo = current_user.advisables.order(:type)

#     @myinfo.each do |advice|
#       if advice.class == @lasttype
      
#       else
#         advice.class != @lasttype
#     binding.pry
#   end
# end

   end

   def new
   @book = Book.new
   end

   def create
   end
end
