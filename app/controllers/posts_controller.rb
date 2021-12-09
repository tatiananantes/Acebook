class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @user = User.find_by_id(session[:user_id])
    p @user
    @post = Post.create(post_params)
    p @post
    redirect_to @post
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
    p @user
    params.require(:post).permit(:message, @user.username, @user.id)
  end


end
