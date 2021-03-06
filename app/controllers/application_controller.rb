class ApplicationController < ActionController::Base
  before_action :set_genres
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :profile_image, :being_played, :favorite_genre, :profile])
  end
	# 共通コンテンツ用
  def set_genres
	@genres = Genre.all
	@user = current_user
	@top_contents = Content.all.last(3)
	@all_ranks = Content.find(Favorite.group(:content_id).order('count(content_id) desc').limit(10).pluck(:content_id))
  end
end

