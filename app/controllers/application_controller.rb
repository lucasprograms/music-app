class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    User.find_by(session_token: session[:session_token])
  end

  def login_user!(email, password)
    @user = User.find_by_credentials(email, password)

    if @user
      session[:session_token] = @user.reset_session_token!
      redirect_to user_url @user
    else
      flash[:danger] = ["User not found, please try again"]
      redirect_to new_session_url
    end
  end

  def logged_in?
    current_user
  end
end
