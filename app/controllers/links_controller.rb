class LinksController < ApplicationController
	def index
	end

	def show
		@link = Link.find(params.require(:id))
		@comment = Comment.new
	end

	def new
		@link = Link.new
	end

	def create
		 @link  = Link.new(link_params)
		# @link.user_id = current_user.id
		 @link.save
		 redirect_to @link
    end

	private

	def link_params
     params.require(:link).permit(:title, :url)
    end


end
