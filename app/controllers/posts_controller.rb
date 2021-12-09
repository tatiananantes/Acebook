class PostsController < ApplicationController
  def new
    @user = User.find_by_id(session[:user_id])
    @post = Post.new 
  end

    def create
      @user = User.find_by_id(session[:user_id])
      Post.create(post_params.merge(user_id: @user.id))
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
    @user = User.find_by_id(session[:user_id])
    params.require(:post).permit(:message)
  end


end
