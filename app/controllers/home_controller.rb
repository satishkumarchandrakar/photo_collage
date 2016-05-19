class HomeController < ApplicationController
	######################################## HOME###############################
	def home 
    if current_user
      redirect_to albums_path, notice: 'You are logged in.'
    else
      @album_images =  AlbumImage.last(25).reverse
      @users = User.all
    end

end
########################################LIST ALL ALBUMS##################
def album_index
	@albums = Album.all

    end
    
end
