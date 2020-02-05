class FavoritesController < ApplicationController
	def create
		content = Content.find(params[:content_id])
		favorite = current_user.favorites.new(content_id: content.id)
		favorite.save
		redirect_to content_path(content)
	end
	def destroy
		content = Content.find(params[:id])
		favorite = current_user.favorites.find_by(content_id: content.id)
		favorite.destroy
		redirect_to content_path(content)
	end
end