class ContentsController < ApplicationController
  def index
  	@genres = Genre.all
  	@contents = Content.all
  end

  def show
  end

  def about
  end
end
