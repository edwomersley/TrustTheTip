class BooksController < ApplicationController
    def index
        # @userimage = current_user.image_url
        @users = User.all 
        
        # @useradvisables = current_user.advisables
        # @bookadvisables= @useradvisables.where(:type => "Book").first(10)
        # binding.pry
    end
    
end
