class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to @comment.post, notice: 'Gracias por tu comentario!'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.post
  end


  private
  
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
  
end
