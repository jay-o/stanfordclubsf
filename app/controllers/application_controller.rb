class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = "Access denied"
    if signed_in?
      redirect_to admin_path
    else
      redirect_to signin_path
    end
	end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end  
end
