class SessionsController < ApplicationController
  def new

  end

  def create
    login_user!(session_params[:email], session_params[:password])
  end

  def destroy
    current_user && current_user.reset_session_token!
    session[:session_token] = nil
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
