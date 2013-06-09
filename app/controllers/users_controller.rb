class UsersController < ApplicationController
  def index
     if user_signed_in?
       @currentuser = User.facebook(current_user.token)
       @image_url = current_user.image_url
       @user = current_user
      end
   end

   def show
    # @books = current_user.books
    # # binding.pry
    # @restaurants = current_user.restaurants
    # @coffeeshops = current_user.coffee_shops
    # @films = current_user.films
    # @cocktailbars = current_user.cocktail_bars
    # @songs = current_user.songs
    @myinfo = User.select(current_user)
    
    # case 
    # when myinfo[0] != nil
     
    #   @mathilda = myinfo[0][0]
    #   @bookname = @mathilda.name
    #   @sophie = myinfo[0][1]
    #   @sophiename = @sophie.name 
      
    # when myinfo[0] != nil
    #   myinfo[0].each do |x|
    #     @myinfo2 = x.name
    #     binding.pry
    #   end
    # #   puts "Mathilda"
      
        # myinfo[0].each do |x|
        #   binding.pry
        #     @x.name
  end
end
