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


      # def destroy
      #   session[:user_id].destroy
      #   redirect_to '/login'
      # end
      
      def destroy
        session.clear
        redirect_to login_path
    end

    # Logs out the current user.

    #   def log_out
    #     session.delete(:user_id)
    #     @user = nil
    #   end
    # end
  
  end