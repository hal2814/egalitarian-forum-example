class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_users

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to '/sign_in' unless admin
  end
end
