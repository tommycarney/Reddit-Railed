class VotesController < ApplicationController
  before_filter :authenticate_user!
  def create
  	 @comment = current_user.votes.create(params.require(:vote).permit(:link_id, :up))
  	 redirect_to :back
  end
end