class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if session[:username]
      @current_user ||= User.find(session[:username])
    else
      @current_user = nil
    end
  end
end
