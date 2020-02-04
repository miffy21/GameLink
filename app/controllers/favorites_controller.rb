class FavoritesController < ApplicationController
	def create
		comment = Coment.find(params[:comment_id])
		favorite = current_user.favorites.new(comment_id: comment.id)
		favorite.save
		redirect_back(fallback_location: comments_path)
	end
	def destroy
		comment = Comment.find(params[:id])
		favorite = current_user.favorites.find_by(comment_id: comment.id)
		favorite.destroy
		redirect_back(fallback_location: comments_path)
	end
end
