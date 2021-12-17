class PhotosController < ApplicationController
    before_action :find_user
    before_action :find_album


    def new
        @photo = Photo.new 
    end
        
    def create
       
        @photo = @album.photos.create(photo_params.merge(user_id: @user.id, album_id: @album.id))
        redirect_to user_album_path(@user, @album)
    end


    private

    def photo_params
        params.require(:photo).permit(:image)
    end

    def find_user
        @user = User.find_by_id(params[:user_id])
    end
    
    def find_album
        @album = @user.albums.find_by_id(params[:album_id])
    end
end
