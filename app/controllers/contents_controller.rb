class ContentsController < ApplicationController
  def index
  	@genres = Genre.all
  	@contents = Content.all
  end

  def show
  	@genres = Genre.all
  	@content = Content.find(params[:id])
    @comment = Comment.all
  end

  def about
  end
end
