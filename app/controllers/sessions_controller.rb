class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && user.state == "Active"
      flash.now[:success] = 'Welcome!'
      sign_in(user)
      redirect_to admin_path
    elsif user && user.authenticate(params[:session][:password]) && user.state != "Active"
      flash.now[:error] = 'Account no longer active'
      render 'new'
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:success] = "Signed Out"
    redirect_to root_url
  end
end