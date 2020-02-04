class UsersController < ApplicationController
	before_action :authenticate_user!
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def exit
  end

    def user_params
    params.require(:user).permit(:name, :image, :nickname, :profile_image, :favorite_genre, :being_played, :profile)
  end
end