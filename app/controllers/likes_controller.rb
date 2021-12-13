class LikesController < ApplicationController
  
  before_action :find_user
  
def create
  @like = Like.new(user_id: current_user.id)
  flash[:success] = 'Liked!'
  like.create(user_id: current_user.id, post_id: @post.id)
  redirect_to posts_path
  end

end
