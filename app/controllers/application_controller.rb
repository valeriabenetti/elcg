class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :authorize


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  # Return a boolean representing if the user is logged in
  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def authorize!
    redirect_to login_path unless logged_in?
  end

  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_path, notice: 'Please log in or sign up'
    end
  end
end
