class CommentsController < ApplicationController
	def create
		comment = Comment.new(comment_params)
		comment.user_id = current_user.id
		comment.save
		redirect_to content_path(comment.content_id)
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
		redirect_to content_path(comment.content)
	end

	private
	def comment_params
		params.require(:comment).permit(:user_id,:content_id,:comment)
	end
end