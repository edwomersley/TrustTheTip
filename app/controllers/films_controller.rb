class FilmsController < ApplicationController
    def index
        @users = User.all
    end
end
