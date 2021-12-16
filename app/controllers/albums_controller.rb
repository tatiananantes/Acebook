class AlbumsController < ApplicationController
  before_action :find_user
  
  def new
    @album = Album.new 
  end

    def create
      Album.create(album_params.merge(user_id: session[:user_id]))
      redirect_to user_albums_path
    end

  def index
    @album = @user.albums.all
  end

  def show
    @album = @user.albums.find(params[:id])
  end



  private

  def album_params
    params.require(:album).permit(:name)
  end

  def find_user
    @user = User.find_by_id(session[:user_id])
  end

end
