class TiplistformsController < ApplicationController
  def index
  end

  def create
   @advisablez= params[:tiplist][:name]
   #render JS that knows how to append html to page
  end

  def new
  end

  def show
  end
end
