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
   end

   def new
      @books = []
        2.times do
          @books << Book.new
      end
       @restaurants = []
        2.times do
          @restaurants << Restaurant.new
      end
      @films = Film.new
      @songs = Song.new
      @coffeeshops = CoffeeShop.new
      @cocktailbars = CocktailBar.new
      @user = current_user
   end

   def book
   
      @book = Book.create(params[:book])
      @book.save!
      @advisables = Advisable.all

      @advisableuser = AdvisableUser.create(:user_id => current_user.id, :advisable_id => @advisables.last.id)
      @advisableuser.save!

      redirect_to new_user_path
   end


end
