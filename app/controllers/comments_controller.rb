class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = Post.find(params[:post_id])
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@comment.post)
      flash.alert = "Hic! Merci pour votre commentaire!"
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
