class CommentsController < ApplicationController

	def create
		comment = Comment.new(comment_params)
		comment.user_id = current_user.id
		if comment.save
			flash[:notice] = "コメントを投稿しました！"
			redirect_to content_path(comment.content_id)
		else
			flash[:notice] = "コメント投稿に失敗しました。コメント内容を確認して送信してください。"
			redirect_to content_path(comment.content_id)
		end
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
		redirect_to content_path(comment.content_id),  notice: "コメントを削除しました。"
	end

	private
	def comment_params
		params.require(:comment).permit(:user_id,:content_id,:comment)
	end
	
end