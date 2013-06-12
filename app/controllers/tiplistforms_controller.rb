class TiplistformsController < ApplicationController
  def index
  end

  def create
   binding.pry
   advisable.class = params[:tiplist][:name]
   advisable.class.save!
   #render JS that knows how to append html to page
  end

  def new
  end

  def show
  end
end
