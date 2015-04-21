class VotesController < ApplicationController
  before_filter :authenticate_user!
  def create
  	@vote = Vote.where(:link_id => params[:vote][:link_id], :user_id => current_user.id).first
  	if @vote
  		@vote.up = params[:vote][:up]
  		@vote.save
  	else
		@vote = current_user.votes.create(params.require(:vote).permit(:link_id, :up))
	end  	 
  	redirect_to :back
  end
  
end