class LinksController < ApplicationController
	def index
	end

	def show
	end

	def new
		@link = Link.new
	end

	def create
		 @link  = Link.new(link_params)
		 @link.save
		 redirect_to @link
    end

	private

	def link_params
     params.require(:link).permit(:title, :url)
    end

end
