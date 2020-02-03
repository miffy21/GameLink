class CommentsController < ApplicationController
	def create
		content = Content.find(comment_params[:content_id])
		comment = Comment.new(comment_params)
		comment.user_id = current_user.id
		comment.save
		redirect_to content_path(content)
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
		redirect_to content_path(comment.content)
	end

	private
	def post_comment_params
		params.require(:content_comment).permit(:user_id,:content_id,:comment)
	end
end