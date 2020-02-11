class ContentsController < ApplicationController

  def index
  	@genres = Genre.all
    if params[:search]
      @contents = Content.search(params[:search]).order(created_at: :desc)
    elsif params[:genre]
      @contents = Content.where(genre_id: params[:genre]).order(created_at: :desc)
    else
     @contents = Content.all
   end
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
