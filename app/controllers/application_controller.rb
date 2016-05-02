class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # call config params only when using devise controller
  before_action :configure_permitted_parameter, if: :devise_controller?

  # protect the database, while allowing these fields to update
  protected
  def configure_permitted_parameter
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :remember_me) }
  end
end
