class CommentsController < ApplicationController
  before_filter :authenticate_user!, only: [:create]
  def create
    @comment = current_user.comments.create(comment_params)
    redirect_to :back
  end
  
  
  private
    def comment_params
      params.require(:comment).permit(:message,:link_id)
    end
end
