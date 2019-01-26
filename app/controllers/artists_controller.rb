class ArtistsController < ApplicationController


	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@artist = current_user.artists.build(artist_params)
		if @artist.save
			flash[:success] = "artist created!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
	end

	private
		def artist_params
			params.require(:artist).permit(:name)
		end

end
