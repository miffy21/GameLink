class ApplicationController < ActionController::Base
	before_action :set_genres
def set_genres
	  	@genres = Genre.all
end
end

