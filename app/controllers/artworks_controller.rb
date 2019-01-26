class ArtworksController < ApplicationController

	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@artwork = current_user.artworks.build(artwork_params)
		if @artwork.save
			flash[:success] = "artwork created!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
	end

	private
		def artwork_params
			params.require(:artwork).permit(:name)
		end


end
