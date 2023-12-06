class CommentController < ApplicationController
  def index
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    comment = Comment.new(message: params[:comment][:message])
    comment.user_id = current_user.id
    comment.save
    redirect_to root_path
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to root_path
  end
end
