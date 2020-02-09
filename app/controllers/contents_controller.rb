class ContentsController < ApplicationController

  def index
  	@genres = Genre.all
  	@contents = Content.search(params[:search]).order(created_at: :desc)
  end

  def show
  	@genres = Genre.all
  	@content = Content.find(params[:id])
  	@comments = Comment.all
    @comment = Comment.new
  end

  def about
  end

end
