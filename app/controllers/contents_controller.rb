class ContentsController < ApplicationController
  def index
  	@genres = Genre.all
  end

  def show
  end

  def about
  end
end
