class CommentsController < ApplicationController
  
  before_action :find_user

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user_id: @user.id))
    redirect_to post_path(@post)
  end

    
    private
      def comment_params
        params.require(:comment).permit(:body)
      end

      def find_user
        @user = User.find_by_id(session[:user_id])
      end
end
