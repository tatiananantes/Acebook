class LikesController < ApplicationController
  before_action :find_user
  before_action :find_post
  
def create
  if already_liked?
    flash[:notice] = "You can't like more than once"
  else
    @post.likes.create(user_id: @user.id)
    flash[:success] = 'Liked!'
  end
  redirect_to posts_path(@post)
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end

  def find_user
    @user = User.find_by_id(session[:user_id])
  end
  
  def already_liked?
    Like.where(user_id: @user.id, post_id:
    params[:post_id]).exists?
  end

end
