class AlbumsController < ApplicationController
  before_action :find_user
  
  def new
    @post = Post.new 
  end

    def create
      Post.create(post_params.merge(user_id: session[:user_id]))
      redirect_to posts_path
    end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end



  private

  def post_params
    params.require(:post).permit(:message, :image)
  end

  def find_user
    @user = User.find_by_id(session[:user_id])
  end

end
