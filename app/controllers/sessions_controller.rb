class SessionsController < ApplicationController
  def index; end

  def create
    @user = User.find_by(username: params[:username])

    if @user
      flash[:notice] = 'You have signed in!'
      session[:id] = @user.id
      session[:username] = @user.username
      redirect_to articles_path
    else
      flash[:alert] = 'No User found. Please sign up'
      redirect_to new_user_path
    end
  end

  def destroy
    session.clear
    redirect_to sessions_path
  end
end
