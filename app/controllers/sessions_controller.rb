class SessionsController < ApplicationController


  
    def create
      @user = User.find_by(username: params[:username])
      
      if !!@user && @user.authenticate(params[:password])

        session[:user_id] = @user.id
        redirect_to users_path
      else

        message = "Something went wrong! Login failed!"
        redirect_to login_path, notice: message
      
      end
    end     
      
      def delete
        session.clear
        redirect_to login_path
     end

  
  end