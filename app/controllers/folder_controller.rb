class FolderController < ApplicationController
   def index
    @folders = current_user.folders
  end
  
  
  private
   def set_folder
      @folder = current_user.folders.find_by(id: params[:id])
    end
    
    
    def folder_params
      params.require(:folder).permit(:name)
    end
end
