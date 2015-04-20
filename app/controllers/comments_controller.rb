class CommentsController < ApplicationController
before_filter :authenticate_user!
  def create
    @comment = current_user.comments.create(params.require(:comment).permit(:message, :link_id))
    redirect_to :back
  end

end